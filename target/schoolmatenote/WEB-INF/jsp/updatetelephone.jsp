<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">

<title>个人中心</title>
</head>

<style>
body{
background-image:url(image/1-5.jpg);

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
   <form action="${pageContext.request.contextPath}/updateTelephoneNote" method="post">

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="userid">学号</label>
      <input type="text" class="form-control" id="userid" name="userid" value="${tel.userid}" >
    </div>
    <div>
      <label for="username">姓名</label>
      <input type="text" class="form-control" id="username" name="username"value="${tel.username}">
    </div>	 
 <div class="form-group col-md-6">
      <label for="workplace">工作单位</label>
      <input type="text" class="form-control" id="workplace" name="workplace" value="${tel.workplace}">
    </div>
    <div>
      <label for="telephoneaddress">通讯地址</label>
      <input type="text" class="form-control" id="telephoneaddress" name="telephoneaddress" value="${tel.telephoneaddress}">
    </div>
    
    <div class="form-group col-md-6">
      <label for="telphone">电话</label>
      <input type="text" class="form-control" id="telephone" name="telephone" value="${tel.telephone}">
    </div>
    <div>
      <label for="emailword">邮编</label>
      <input type="text" class="form-control" id="emailword" name="emailword" value="${tel.emailword}">
    </div>	
   
  </div>
  <div class="form-group" style="width: 605px">
    <label for="qq">QQ</label>
    <input type="text" class="form-control" id="qq" name="qq"value="${tel.qq}">
  </div>

  <a href="findTelephoneNoteByMany" class="btn btn-primary">取消</a>
  <input type="submit" class="btn btn-primary" value="保存" onclick="return confirm('确认保存')"></input>
</form>

   </div>
     
     
     </div> 
	  <%--    <form action="${pageContext.request.contextPath}/login" method="post">
	id:<input type="text" name="userid"  readonly="readonly" value="${tel.userid}"><br/><br>
	name:<input type="text" name="username" value="${tel.username}" ><br/><br>
	password:<input type="text" name="workplace" value="${tel.workplace}"><br/><br>
	sex:<input type="text" name="telephoneaddress" value="${tel.telephoneaddress}" readonly="readonly"><br/><br>
	age:<input type="text" name="telephone" value="${tel.telephone}"><br/><br>
	phone:<input type="text" name="emailword" value="${tel.emailword}"><br/><br>
	qq:<input type="text" name="qq" value="${tel.qq}"><br/><br>
	<input type="submit" value="修改">
	</form> --%>
     
</body>
</html>