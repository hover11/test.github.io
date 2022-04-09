<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
background-image:url(${pageContext.request.contextPath}/image/1-5.jpg);
}

</style>
<body>
<div class="container">
<table class="table">
  <thead class="col-sm-7">
    <tr >
      <th scope="col">学号</th>
      <th scope="col">姓名</th>
      <th scope="col">工作单位</th>
      <th scope="col">通信地址</th>
      <th scope="col">电话号码</th>
      <th scope="col">邮编</th>
      <th scope="col">qq</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${info.list}" var="tel">
    <tr class="col-sm-7">
      <th scope="row">${tel.userid}</th>
      <td>${tel.username}</td>
      <td>${tel.workplace}</td>
      <td>${tel.telephoneaddress}</td>
      <td>${tel.telephone}</td>
      <td>${tel.emailword}</td>
      <td>${tel.qq}</td>
       <td>
      
       </td>
    </tr>
    </c:forEach>
    <!-- 分页查询导航栏 -->
    <tr>
    
    <td colspan="7">
    <ul class="pagination justify-content-end">
    <li class="page-item">
     <a class="page-link" href="${pageContext.request.contextPath}/findTelephoneNoteByManynormal?pageNum=1&&userid=${userid}" >
           首页
    </a>
    </li>
    <li class="page-item">
     <a class="page-link" href="${pageContext.request.contextPath}/findTelephoneNoteByManynormal?pageNum=${info.prePage}&&userid=${userid}" >
            上一页</a>
    </li>

    <c:forEach items="${info.navigatepageNums}" var="num">
        <c:if test="${num==info.pageNum}">
        <li class="page-item">[${num}]</li>
        </c:if>
    <c:if test="${num!=info.pageNum}">
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findTelephoneNoteByManynormal?pageNum=${num}&&userid=${userid}">${num}</a></li>
    </c:if>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findTelephoneNoteByManynormal?pageNum=${info.nextPage}&&userid=${userid}">下一页</a></li>
    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findTelephoneNoteByManynormal?pageNum=${info.pages}&&userid=${userid}">尾页</a></li>
   </ul>
   </td>
    
    </tr>
  </tbody>
</table>
</div>
</body>
</html>