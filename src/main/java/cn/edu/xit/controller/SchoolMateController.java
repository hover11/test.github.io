package cn.edu.xit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.xit.po.Admit;
import cn.edu.xit.po.SchoolMate;
import cn.edu.xit.service.SchoolMateService;

@Controller
public class SchoolMateController {
	@Autowired
	private SchoolMateService schoolmateservice;
//	当方法参数是包装类时,如:User 两种情况:1.要么是作为传递的参数  2.要么是包装类对象的声明,然后必须用set方法(方法里面放httpservletrequest的getparameter)进行这个对象的赋值
    @RequestMapping("/findUserByManyCondition")
	public String findUserByManyCondition(@RequestParam(defaultValue="1") int pageNum, String userid,String work,String graduateschool,Model model,HttpSession session)
	{
//    	session作用域:可以作用在多个界面上。model作用域:作用在相邻页面
    	PageHelper.startPage(pageNum,5);
    	List<SchoolMate> schoolmate1=schoolmateservice.findUserByManyCondition(userid,work,graduateschool);
    	PageInfo<SchoolMate> info=new PageInfo<SchoolMate>(schoolmate1);
    	model.addAttribute("info", info);
//    	这个userid是为了显示查什么学号
    	model.addAttribute("userid", userid);
    	model.addAttribute("work", work);
    	model.addAttribute("graduateschool", graduateschool);
    	return "manageruserlist";
	}

   
    
    @RequestMapping("/login")
	public String login(@Param("userid") String userid,@Param("password") String password,Model model,HttpSession session)
	{   SchoolMate schoolmate=schoolmateservice.findUserByUseridandPwd(userid, password);
    	Admit admit=schoolmateservice.findAdmit(userid, password);
//    	判断普通人员和管理员
    	if(schoolmate!=null)
    	{
//    		以是否有session判定是否有用户
    	session.setAttribute("User", schoolmate);
//      	为后面的个人中心学号参数作准备
    	session.setAttribute("userid1", userid);
    	return "index2";
    	}else{
    		if(admit!=null)
    		{
    	    	session.setAttribute("AdmitUser", admit);
    	    	return "managerloginindex";

    		}
    		else{
    			return "login";
    		}
    	}
    	
	}
//    在没有点击要查哪个表时是没有数据显示的，所以先把loginindex里面的search的form的链接设置为当前界面
    @RequestMapping("/managerloginindex")
   	public String managerloginindex()
   	{
    	return "managerloginindex";
   	}
    @RequestMapping("/findUserByUserId")
	public String findUserByUserId(String userid,Model model)
	{  
    	SchoolMate schoolmate=schoolmateservice.findUserByUserId(userid);
    	model.addAttribute("user", schoolmate);
    	return "updateuser";
	}

    @RequestMapping("/add")
   	public String add()
   	{
    	return "adduser";
   	}
    @RequestMapping("/addUser")
   	public String addUser(SchoolMate schoolmate,Model model)
   	{
       	int count=schoolmateservice.addUser(schoolmate);
       	if(count>0)
       	{
       	 return "redirect:/findUserByManyCondition";
       	}
       	return "failure";
   	}
    @RequestMapping("/deleteUserById")
   	public String deleteUserById(String userid,Model model)
   	{
       	int count=schoolmateservice.deleteUserById(userid);
        if(count>0)
        	return "redirect:/findUserByManyCondition";
       	return "failure";
   	}
    @RequestMapping("/updateUser")
   	public String  updateUser(SchoolMate schoolmate,Model model)
   	{
       	int count=schoolmateservice.updateUser(schoolmate);
        if(count>0)
        	return "redirect:/findUserByManyCondition";
       	return "failure";
   	}
    
    //普通用户操作
//  根据学号找出用户然后转到个人中心
  @RequestMapping("/findUserByUserIdToPerson")
	public String findUserByUserIdToPerson(HttpSession session,Model model)
	{   
//  	对应上面login的session
  	String userid=(String) session.getAttribute("userid1");
  	SchoolMate schoolmate=schoolmateservice.findUserByUserId(userid);
  	model.addAttribute("user", schoolmate);
  	return "userpersonal";
	}
    //更改完自己的信息跳转到浏览页面
    @RequestMapping("/updateUserPersonal")
   	public String  updateUserPersonal(SchoolMate schoolmate)
   	{
       	int count=schoolmateservice.updateUser(schoolmate);
        if(count>0)
        	return "updatesuccess";
       	return "failure";
   	}
  //当个人信息保存后返回浏览首页
    @RequestMapping("/normalloginindex")
   	public String normalloginindex()
   	{
    	return "normalloginindex";
   	}
    //普通用户进行多条件查询
    @RequestMapping("/findUserByManyConditionnormal")
	public String findUserByManyConditionnormal(@RequestParam(defaultValue="1") int pageNum, String userid,String work,String graduateschool,Model model,HttpSession session)
	{
//    	session作用域:可以作用在多个界面上。model作用域:作用在相邻页面
    	PageHelper.startPage(pageNum,5);
    	List<SchoolMate> schoolmate1=schoolmateservice.findUserByManyCondition(userid,work,graduateschool);
    	PageInfo<SchoolMate> info=new PageInfo<SchoolMate>(schoolmate1,3);
    	model.addAttribute("info", info);
//    	这个userid是为了显示查什么学号
    	model.addAttribute("userid", userid);
    	model.addAttribute("work", work);
    	model.addAttribute("graduateschool", graduateschool);
    	return "normaluserlist";
	}
    @RequestMapping("/exit")
    public String  exit(HttpSession session)
    {
    	session.invalidate();
    	return "exitsuccess";
    }
//    页面跳转
    @RequestMapping("/index")
    public String index()
    {
    	return "index";
    }
    @RequestMapping("/iindex2")
    public String indexfinish()
    {
    	return "index2";
    }
    @RequestMapping("/introduce")
    public String introduce()
    {
    	return "introduce";
    }
    @RequestMapping("/contact")
    public String contact()
    {
    	return "contact";
    }
    @RequestMapping("/iintroduce2")
    public String introducefinish()
    {
    	return "introduce2";
    }
    @RequestMapping("/ccontact2")
    public String contactfinish()
    {
    	return "contact2";
    }
}
