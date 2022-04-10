<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
</head>
<body  style="background:url(${pageContext.request.contextPath}/image/1-5.jpg);
background-size:100%; ">
<div class="alert alert-danger" role="alert" >
  <h4 class="alert-heading" class="text-success">退出成功！</h4>
  <p>欢迎下次登录
  </p>
  <div class="spinner-grow" role="status">
  <span class="sr-only">Loading...</span>
</div>
  <hr>
  <p class="mb-0"><div id="div1"></div></p>
</div>
</body>

<script type="text/javascript">
	//设定倒数秒数 
	var count = 5;
	//写一个方法，显示倒数秒数  数到0后跳转页面  
	function countDown(){
		//将count显示在div中
		document.getElementById("div1").innerHTML= count+"秒后跳转到学校官网界面";
		//没执行一次，count减1
		count -= 1;
		//count=0时，跳转页面
		if(count==0){
			location.href="${pageContext.request.contextPath}/index";
                        //window.location.href="index.html";
		}
		//setTimeout的作用是每秒执行一次,countDown()
		setTimeout("countDown()",1000);
	}
	//执行countDown方法
	countDown();
</script>
</html>