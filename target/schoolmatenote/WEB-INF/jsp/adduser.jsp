<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
/* function lose(){
	var email=document.getElementById("email");
	var value =document.getElementById("email").value;
	var reg =/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
	if(!reg.test(value))
	{
		alert("邮箱格式不正确");
		return false;
	}
} */
function check()
{
	var email =document.getElementById("email").value;
	var emailword=document.getElementById("emailword").value;
	var telephone=document.getElementById("telephone").value;
	var userid=document.getElementById("userid").value;
	var date=document.getElementById("graduatetime").value;
	var reg =/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(.[a-zA-Z0-9_-]+)+$/;
	var reg1=/^[1-9]\d{5}$/;
	var myreg=/^1[3456789]\d{9}$/;
	var reg2=/^\d{10}$/;
	var reg3=/^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/
	if(!(reg.test(email)&&reg1.test(emailword)&&myreg.test(telephone)&&reg2.test(userid)&&reg3.test(date)))
	{
		alert("数据格式不正确，请检查格式");
		return false;
	}
	return true;
	
	
	}

</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/image/1-5.jpg">

<form action="${pageContext.request.contextPath}/addUser" method="post" onsubmit="return check()">
          <div style="width: 800px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 230px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">基本信息</div>	
      <!-- 表单bootstrap--> 
   <div style="width: 800px;margin: 0 auto;margin-top: 15px">
 
  <div class="form-row">
    <div >
      <label for="userid">学号</label>
      <input type="text" class="form-control" id="userid" name="userid" value="${user.userid}" placeholder="请输入学号">
    </div>	 
 <div class="form-group col-md-4">
      <label for="username">姓名</label>
      <input type="text" class="form-control" id="username" name="username" value="${user.username}"placeholder="请输入姓名">
    </div>
     <div class="form-group col-md-3">
    <label for="exampleInputPassword1">密码</label>
    <input type="password" class="form-control" id="Password"name="password" value="${user.password}"placeholder="请输入密码">
  </div>
    <div class="form-group col-md-3" >
      <label for="work">工作</label>
      <select  class="form-control" id="work" name="work"  >
      <option>请选择</option>
      <option value="党内机关" <c:if test="${work=='党内机关'}">selected</c:if>>党内机关</option>
      <option value="事业单位" <c:if test="${work=='事业单位'}">selected</c:if>>事业单位</option>
      <option value="私营企业" <c:if test="${work=='私营企业'}">selected</c:if>>私营企业</option>
      <option value="党政机关" <c:if test="${work=='党政机关'}">selected</c:if>>党政机关</option>
      <option value="民营企业" <c:if test="${work=='民营企业'}">selected</c:if>>民营企业</option>
      </select>
    </div>
    
    <div class="form-group col-md-4">
      <label for="telephone">联系电话</label>
      <input type="text" class="form-control" id="telephone" name="telephone" value="${user.telephone}"placeholder="请输入正确的电话号码">
    </div>
    <div>
      <label for="grade">专业班级</label>
      <input type="text" class="form-control" id="grade" name="grade" value="${user.grade}" placeholder="xx级/xx专业/xx班级">
    </div>	
    
    <div class="form-group col-md-5">
      <label for="graduateschool">毕业学校</label>
      <select class="form-control" name="graduateschool">
      <option>请选择</option>
      <option value="厦门工学院" <c:if test="${graduateschool=='厦门工学院'}">selected</c:if>>厦门工学院</option>
      <option value="华侨大学" <c:if test="${graduateschool=='华侨大学'}">selected</c:if>>华侨大学</option>
      <option value="西安交通大学"<c:if test="${graduateschool=='西安交通大学'}">selected</c:if>>西安交通大学</option>
      <option value="厦门理工学院"<c:if test="${graduateschool=='厦门理工学院'}">selected</c:if>>厦门理工学院</option>
      </select>
    </div>
    <div class="form-group col-md-5">
      <label for="graduatetime">毕业时间</label>
      <input type="date" class="form-control" id="graduatetime" name="graduatetime" value="${user.graduatetime}">
    </div>
    
      <div class="form-group col-md-6">
      <label for="email">电子邮箱</label>
      <input id="email" type="text" class="form-control" id="email" name="email" value="${user.email}" placeholder="请输入正确的邮箱" onblur="lose()">
    </div>
    <div class="form-group col-md-4">
      <label for="ermailword" >邮编</label>
      <input type="text" class="form-control" id="emailword" name="emailword" value="${user.emailword}"placeholder="请输入正确的邮箱编号">
    </div>	
    
  </div>
  

  <input type="reset" class="btn btn-primary" ></input>
  <input type="submit" class="btn btn-primary" value="添加" ></input>
  </div>
</form>

  

</body>

</html>