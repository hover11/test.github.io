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
">

<div class="container-fluid">
<div class="col-2">  
 
  </div>
  
<table class="table ">
  <thead>
    <tr>
      <th scope="col">学号</th>
      <th scope="col">姓名</th>
      <th scope="col">工作</th>
      <th scope="col">电话</th>
      <th scope="col">邮箱</th>
      <th scope="col">邮编</th>
      <th scope="col">年级</th>
      <th scope="col">毕业学校</th>
      <th scope="col">毕业年份</th>
    </tr>
  </thead>
  <tbody>
  <!-- var属性相当于迭代对象:就像for循环里面的i=i+1 -->
  <c:forEach items="${info.list}" var="list">
    <tr>
      <td scope="row">${list.userid}</td>
      <td>${list.username}</td>
      <td>${list.work}</td>
      <td>${list.telephone}</td>
      <td>${list.email}</td>
      <td>${list.emailword}</td>
      <td>${list.grade}</td>
      <td>${list.graduateschool}</td>
      <td>${list.graduatetime}</td>
      <td>
      
      </td>
    </tr>
    </c:forEach>
    <!-- 分页查询导航条 -->
    <tr>
    
    <td colspan="11">
    <ul class="pagination justify-content-end">
    <li class="page-item">
     <a class="page-link" href="${pageContext.request.contextPath}/findUserByManyConditionnormal?pageNum=1&&userid=${userid}&&work=${work}&&graduateschool=${graduateschool}" >
           首页
    </a>
    </li>
    <li class="page-item">
     <a class="page-link" href="${pageContext.request.contextPath}/findUserByManyConditionnormal?pageNum=${info.prePage}&&userid=${userid}&&work=${work}&&graduateschool=${graduateschool}" >
            上一页</a>
    </li>

    <c:forEach items="${info.navigatepageNums}" var="num">
        <c:if test="${num==info.pageNum}">
        <li class="page-item">[${num}]</li>
        </c:if>
    <c:if test="${num!=info.pageNum}">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findUserByManyConditionnormal?pageNum=${num}&&userid=${userid}&&work=${work}&&graduateschool=${graduateschool}">${num}</a></li>
    </c:if>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findUserByManyConditionnormal?pageNum=${info.nextPage}&&userid=${userid}&&work=${work}&&graduateschool=${graduateschool}">下一页</a></li>
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findUserByManyConditionnormal?pageNum=${info.pages}&&userid=${userid}&&work=${work}&&graduateschool=${graduateschool}">尾页</a></li>
   </ul>
   </td>
    
    </tr>
  </tbody>
</table>
</div>
</body>
</html>