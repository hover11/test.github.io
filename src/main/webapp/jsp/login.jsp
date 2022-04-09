<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">
</head>
<body background="${pageContext.request.contextPath}/image/zhuye.jpg">
<div class="float-right"id="con" style="margin-top: 160px;margin-right: 180px;" >
<div  class="container" >
  <!-- Content here -->

  <h4 id="font">用户登录：</h4>

<form  class="col-lg" action="${pageContext.request.contextPath}/login" method="post">
  <div class="form-group">
    <label for="id" id="font">学号</label>
    <input type="text" class="form-control" maxlength="150" name="userid" placeholder="请输入学号">
    
  </div>
  <div class="form-group-xl ">
    <label for="password" id="font">密码</label>
    <input type="password" class="form-control" maxlength="150px"name="password" placeholder="请输入密码">

  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" class="btn btn-outline-warning">
    <label class="form-check-label" for="exampleCheck1" id="font">记住密码</label>
  </div>
  <input type="submit" class="btn btn-danger" value="登录"></input>
  <input type="reset"class="btn btn-danger"></input>
  
</form>
</div>

</div>

</body>
</html>