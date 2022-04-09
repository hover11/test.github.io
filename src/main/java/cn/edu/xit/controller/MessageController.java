package cn.edu.xit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.xit.po.Message;
import cn.edu.xit.po.TelNote;
import cn.edu.xit.service.MessageService;

@Controller
public class MessageController {
	//@Autowired注解是为了给接口配置类
   @Autowired
   private MessageService messageService;
   @RequestMapping("findMessageByUserId")
   public String findMessageByUserId(@RequestParam(defaultValue="1") int pageNum,String userid,Model model)
   {   PageHelper.startPage(pageNum,3);
	   List<Message> message=messageService.findMessageByUserid(userid);
	   PageInfo<Message> info=new PageInfo<Message>(message,3);
	   model.addAttribute("info", info);
       model.addAttribute("userid", userid);
	   return "managermessagelist";
	   
   }
   
   @RequestMapping("findMessageByUserIdToPerson")
   public String findMessageByUserIdToPerson(HttpSession session,Model model)
   {   String userid=(String) session.getAttribute("userid1");
	   List<Message> message=messageService.findMessageByUserIdToPerson(userid);
	   if(message!=null)
	   {   model.addAttribute("message", message);
		   return "messagepersonal";
	   }
	   return"failure";
   }
   @RequestMapping("deleteMessageByUserId")
   public String deleteMessageByUserId(String userid,String id)
   {
	   int count=messageService.deleteMessageByUserId(userid,id);
	   if(count>0)
	   {   
		   return "redirect:findMessageByUserId";
	   }
	   return"failure";
   }
//   普通人员操作
   @RequestMapping("normalfindMessageByUserId")
   public String normalfindMessageByUserId(@RequestParam(defaultValue="1") int pageNum,String userid,Model model)
   {
	   PageHelper.startPage(pageNum,3);
	   List<Message> message=messageService.findMessageByUserid(userid);
	   PageInfo<Message> info=new PageInfo<Message>(message,3);
	   model.addAttribute("info", info);
   	   model.addAttribute("userid", userid);
	   return "normalmessagelist";
	   
   }
   
   @RequestMapping("normaldeleteMessageByUserId")
   public String normaldeleteMessageByUserId(String userid,String id)
   {
	   int count=messageService.deleteMessageByUserId(userid,id);
	   if(count>0)
	   {   
		   return "redirect:findMessageByUserIdToPerson";
	   }
	   return"failure";
   }
//   跳转到插入界面
   @RequestMapping("/addmessage")
   public String addmessage()
   {
	   return"addmessage";
   }
   @RequestMapping("/addMessage")
   public String addMessage(Message message)
   {   int count=messageService.addMessage(message);
   if(count>0)
	   return"updatesuccess";
   return"faliure";
   }
   
}
