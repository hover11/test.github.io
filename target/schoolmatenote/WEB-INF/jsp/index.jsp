<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>   
<title>首页</title>
</head>
<style>
body{
background-image:url(image/1-5.jpg);
}

</style>
<body>
     <div style="width: 1190px;height:800px;margin: 0 auto;">
     <form action="${pageContext.request.contextPath}/index" method="post">
     <div style="width: 1190px;height:60px;line-height: 60px">
     <span style="margin-left: 460px;font-size: 30px">校友录管理系统</span>
     </div>	
<!-- 导航条-->
     <div style="margin-top: 10px;width:1190px;height:30px;float: left;
     line-height: 30px">
     <div style="float: left;width: 250px;margin-left:60px"><a href="#">首页</a></div>
     <div style="float: left;width: 250px"><a href="introduce">学校简介</a></div>
     <div style="float: left;width: 250px"><a href="contact">联系我们</a></div>
     <div><a href="login">登录</a> <span>${msg}</span>
     
     </div>
     </div>
  <!-- 轮播图bootstrap-->   

     
     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"
     style="margin-top: 50px">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./image/1-1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./image/1-3.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="./image/1-4.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  
  
</div>
     
    </form> 
     </div>
     
     
     
</body>
</html>