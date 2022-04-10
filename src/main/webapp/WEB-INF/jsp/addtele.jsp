<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">
    
<title>个人中心</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>

<script type="text/javascript">
function check()
{
var userid=document.getElementById("userid").value;
var telephone=document.getElementById("telephone").value;
var emailword=document.getElementById("emailword").value;
var qq=document.getElementById("qq").value;
var reg2=/^\d{10}$/;
var myreg=/^1[3456789]\d{9}$/;
var reg1=/^[1-9]\d{5}$/;
if(!(reg1.test(emailword)&&myreg.test(telephone)&&reg2.test(userid)&&reg2.test(qq)))
   {
	alert("数据格式不正确，请检查格式");
	return false;
	}
	return true;
}
</script>
</head>
<style>
body{
background-image:url(${pageContext.request.contextPath}/image/1-5.jpg);
}

</style>
<body>
     <div style="width: 1190px;height:800px;margin: 0 auto;">
  <!-- 基本信息-->   
        <div style="width: 800px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 195px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">基本信息</div>	
      <!-- 表单bootstrap--> 
   <div style="width: 800px;margin: 0 auto;margin-top: 15px">
   <form action="${pageContext.request.contextPath}/addTelephoneNote" method="post"onsubmit="return check() ">

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="userid">学号</label>
      <input type="text" class="form-control" id="userid" name="userid" placeholder="请输入学号">
    </div>
    <div>
      <label for="username">姓名</label>
      <input type="text" class="form-control" id="username" name="username"placeholder="请输入姓名">
    </div>	 
 <div class="form-group col-md-6">
      <label for="workplace">工作单位</label>
      <input type="text" class="form-control" id="workplace" name="workplace" placeholder="请输入工作单位">
    </div>
    <div>
      <label for="username">通讯地址</label>
      <input type="text" class="form-control" id="telephoneaddress" name="telephoneaddress" placeholder="请输入通信地址">
    </div>
    
    <div class="form-group col-md-6">
      <label for="telphone">电话</label>
      <input type="text" class="form-control" id="telephone" name="telephone" placeholder="请输入正确的电话号码" >
    </div>
    <div>
      <label for="emailword">邮编</label>
      <input type="text" class="form-control" id="emailword" name="emailword" placeholder="请输入正确的邮箱">
    </div>	
   
  </div>
  <div class="form-group" style="width: 605px">
    <label for="qq">QQ</label>
    <input type="text" class="form-control" id="qq" name="qq"placeholder="请输入qq">
  </div>

  <input type="reset" class="btn btn-primary"></input>
  <input type="submit" class="btn btn-primary" value="添加" ></input>
</form>

   </div>
     
     
     </div>
     
     
     
</body>
</html>