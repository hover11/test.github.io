<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function check()
{
var reg3=/^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
var date=document.getElementById("datetime").value;
if(!reg3.test(date))
	{
	alert("您的日期不正确，请检查");
	return false;
	}
	return true;
}
</script>
</head>
<body  style="background:url(${pageContext.request.contextPath}/image/1-5.jpg">
<div class="table-responsive">
<form action="${pageContext.request.contextPath}/addMessage" method="post" onsubmit="return check()">
          <div style="width: 800px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 195px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">新留言</div>	
      <!-- 表单bootstrap--> 
   <div style="width: 800px;margin: 0 auto;margin-top: 15px">
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="id">学号</label>
      <input type="text" class="form-control" id="id" name="userid" readonly="readonly" value="${User.userid}">
    </div>
    <div class="form-group col-md-5">
      <label for="userid">标题</label>
      <input type="text" class="form-control" id="userid" name="title" placeholder="请输入标题" >
    </div>	 
 <div class="form-group col-md-4">
      <label for="username">内容</label>
      <input type="text" class="form-control" id="username" name="introduce" placeholder="请输入内容">
    </div>
     <div class="form-group col-md-5">
    <label for="exampleInputPassword1">日期</label>
    <input type="date" class="form-control" id="datetime" name="datetime" >
  </div>
  </div>
  <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/normalloginindex">返回</a>
  <input class=" btn btn-primary" type="submit" value="添加">
  </div>
  </form>
  
  
  </div>
</body>
</html>