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

import cn.edu.xit.po.SchoolMate;
import cn.edu.xit.po.TelNote;

import cn.edu.xit.service.TelService;

@Controller
public class TelController {
	@Autowired
	private TelService telService;

	//管理员操作
	 @RequestMapping("/findTelephoneNoteByMany") 
	 public String findTelephoneNoteByMany(@RequestParam(defaultValue="1") int pageNum,String userid,Model model){
		 //�˴�������� 
		 PageHelper.startPage(pageNum,3);
		 List<TelNote> tel =telService.findTelephoneNoteByMany(userid); 
	     PageInfo<TelNote> info=new PageInfo<TelNote>(tel,3);
         model.addAttribute("info", info);
		 model.addAttribute("userid", userid);
	     return "managertelelist";
	  
	 
 }
//根据userid查出用户进行修改
		 @RequestMapping("findTelephoneByUserId") 
		 public String findTelephoneNoteByUserIdtoUpdate(String userid,Model model){
			 //�˴�������� 
			 TelNote tel = telService.findTelephoneNoteByUserId(userid); 
			 model.addAttribute("tel", tel);
			
			return"updatetelephone";
		 
	 }
	
	  
	  @RequestMapping("deleteTelephoneNote") 
	  public String deleteTelephoneNote(String userid){
		  //�˴��������
	 telService.deleteTelephoneNote(userid);
	 return "redirect:findTelephoneNoteByMany";
	 } 
	  //ʵ�ֲ���telephonenote�����ݣ������ض���findUser
	  @RequestMapping("addtele")
	  public String addtele()
	  {
		  return "addtele";
	  }
	  @RequestMapping("addTelephoneNote") 
	  public String addTelephoneNote(TelNote TelNote){ //�˴�������� 
		  telService.addTelephoneNote(TelNote); 
		  return"redirect:findTelephoneNoteByMany";
	  
	  } //ʵ���޸�telephonenote�����ݣ������ض���findUser
	  
	  @RequestMapping("updateTelephoneNote")
	  public String updateTelephoneNote(TelNote TelNote){ 
		  //�˴��������
	  telService.updateTelephoneNote(TelNote); 
	  return "redirect:findTelephoneNoteByMany";
	 
	 }
	  
	  //普通用户操作
//	  普通用户根据多条件查询
	  @RequestMapping("/findTelephoneNoteByManynormal") 
		 public String findTelephoneNoteByManynormal(@RequestParam(defaultValue="1") int pageNum,String userid,Model model){
			 //�˴�������� 
		     PageHelper.startPage(pageNum,3);
			 List<TelNote> tel =telService.findTelephoneNoteByMany(userid); 
		     PageInfo<TelNote> info=new PageInfo<TelNote>(tel,3);
	         model.addAttribute("info", info);
			 model.addAttribute("userid", userid);
		     return "normaltelelist";
		  
		 
	 }
//	  根据userid查出个人信息
	  @RequestMapping("/findTeleByUserIdToPerson")
		public String findUserByUserIdToPerson(HttpSession session,Model model)
		{   
//	    	对应上面login的session
	    	String userid=(String) session.getAttribute("userid1");
	    	TelNote tel=telService.findTelephoneNoteByUserId(userid);
	    	model.addAttribute("tel", tel);
	    	return "telepersonal";
		}
	//更改完自己的信息跳转到浏览页面
	    @RequestMapping("/updateTelephonePersonal")
	   	public String  updateUserPersonal(TelNote TelNote)
	   	{
	       	telService.updateTelephoneNote(TelNote);
	        return "updatesuccess";
	       	
	   	}
	  
	  
	
		  
		 
	 
}
