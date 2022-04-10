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
</head>
<body  style="background:url(${pageContext.request.contextPath}/image/1-5.jpg)">
<div class="table-responsive">
<form action="${pageContext.request.contextPath}/updateUser" method="post">
          <div style="width: 800px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 195px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">基本信息</div>	
      <!-- 表单bootstrap--> 
   <div style="width: 800px;margin: 0 auto;margin-top: 15px">
 
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="id">序号</label>
      <input type="text" class="form-control" id="id" name="id" value="${user.id}">
    </div>
    <div>
      <label for="userid">学号</label>
      <input type="text" class="form-control" id="userid" name="userid" value="${user.userid}">
    </div>	 
 <div class="form-group col-md-4">
      <label for="username">姓名</label>
      <input type="text" class="form-control" id="username" name="username" value="${user.username}">
    </div>
     <div class="form-group col-md-2">
    <label for="exampleInputPassword1">密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1"name="password" value="${user.password}">
  </div>
    <div>
      <label for="work">工作</label>
      <input type="text" class="form-control" id="work" name="work" value="${user.work}">
    </div>
    
    <div class="form-group col-md-6">
      <label for="telephone">联系电话</label>
      <input type="text" class="form-control" id="telephone" name="telephone" value="${user.telephone}">
    </div>
    <div>
      <label for="grade">专业班级</label>
      <input type="text" class="form-control" id="grade" name="grade" value="${user.grade}">
    </div>	
    
    <div class="form-group col-md-6">
      <label for="graduateschool">毕业学校</label>
      <input type="text" class="form-control" id="graduateschool" name="graduateschool" value="${user.graduateschool}">
    </div>
    <div>
      <label for="graduatetime">毕业时间</label>
      <input type="date" class="form-control" id="graduatetime" name="graduatetime" value="${user.graduatetime}">
    </div>
    
      <div class="form-group col-md-6">
      <label for="email">电子邮箱</label>
      <input type="text" class="form-control" id="email" name="email" value="${user.email}">
    </div>
    <div>
      <label for="ermailword" >邮编</label>
      <input type="text" class="form-control" id="emailword" name="emailword" value="${user.emailword}">
    </div>	
    
  </div>
  

  <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/findUserByManyCondition">取消</a>
  <input type="submit" class="btn btn-primary" value="保存" ></input>
  </div>
</form>

  
</div>
</body>

</html>