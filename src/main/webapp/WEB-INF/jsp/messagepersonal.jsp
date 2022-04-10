<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校友录系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js">

</head>
<body style="background:url(${pageContext.request.contextPath}/image/1-5.jpg);
background-size:100%; ">
     <div style="width: 1190px;height:800px;margin: 0 auto;">
     
     <div style="width: 1190px;height:60px;line-height: 60px">
     <span style="margin-left: 460px;font-size: 30px">校友录管理系统</span>
     </div>	
<!-- 导航条-->
     <div style="margin-top: 10px;width:1190px;height:30px;float: left;
     line-height: 30px">
     <div style="float: left;width: 220px;margin-left:60px"><a href="iindex2">学校首页</a></div>
     <div style="float: left;width: 220px"><a href="iintroduce2">校友活动</a></div>
     <div style="float: left;width: 220px"><a href="ccontact2">联系我们</a></div>
     <div style="float: left;width: 220px"><a href="exit" onclick="return confirm('确定退出?')">退出登录</a></div>
     
      <div style="width: 1185px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 10px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">我的留言</div>	
  
<table class="table ">
  <thead>
    <tr>
      <th scope="col">学号</th>
      <th scope="col">日期</th>
      <th scope="col">内容</th>
      <th scope="col">标题</th>
      <th scope="col">操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${message}" var="message">
    <tr>
      <td scope="row">${message.userid}</td>
      <td>${message.datetime}</td>
      <td>${message.introduce}</td>
      <td>${message.title}</td>
      <td>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/normaldeleteMessageByUserId?userid=${message.userid}&id=${message.id}" onclick="return confirm('确认删除?')">删除</a>
      </td>
      
    </tr>
    </c:forEach>
    
  </tbody>
</table>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/normalloginindex">返回</a>

<a class="btn btn-primary" href="${pageContext.request.contextPath}/addmessage">留言</a>

</div>
</div>
</body>
</html>