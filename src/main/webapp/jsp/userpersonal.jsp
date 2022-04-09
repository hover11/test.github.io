<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">



<title>个人中心</title>
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
     
      

     
     </div>
  <!-- 基本信息-->   
        <div style="width: 800px;height: 50px;margin-top: 40px;
        font-size: 18px;font-weight: bold;margin-left: 195px;border-bottom: 3px solid #ADD8E6;
        line-height: 50px">基本信息</div>	
      <!-- 表单bootstrap--> 
   <div style="width: 800px;margin: 0 auto;margin-top: 15px">
   <form action="${pageContext.request.contextPath}/updateUserPersonal" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="id">序号</label>
      <input type="text" class="form-control" id="id" name="id" readonly="readonly"value="${user.id}">
    </div>
    <div>
      <label for="userid">学号</label>
      <input type="text" class="form-control" id="userid" readonly="readonly"name="userid" value="${user.userid}">
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
      <select  class="form-control mr-sm-2 " id="work" name="work"  >
      <option>请选择</option>
      <!-- c:if 好处是提高代码的健壮性(跟传进来的数据作比较，相等就将option里面的value上传后台)(option的value属性没写则会返回标签的内容) -->
      <!-- 进一步说明EL语句在jsp启动时就会生效,里面的内容可以放name值(如下),model.addatrribute的参数(类似键),session.setattribute的参数,对象的属性(如:查找到了一个customer对象，可以将它的属性用${customer.id}等的形式显示出这个customer对象的属性id值)() -->
      <option value="党内机关"<c:if test="${user.work=='党内机关'}">selected='selected'</c:if>> 党内机关</option>
      <option value="事业单位" <c:if test="${user.work=='事业单位'}">selected='selected'</c:if>>事业单位</option>
      <option value="私营企业" <c:if test="${user.work=='私营企业'}">selected='selected'</c:if>>私营企业</option>
      <option value="党政机关" <c:if test="${user.work=='党政机关'}">selected='selected'</c:if>>党政机关</option>
      <option value="民营企业" <c:if test="${user.work=='民营企业'}">selected='selected'</c:if>>民营企业</option>
      </select>
    </div>
    
    <div class="form-group col-md-6">
      <label for="telephone">联系电话</label>
      <input type="text" class="form-control" id="telephone" name="telephone" value="${user.telephone}">
    </div>
    <div>
      <label for="grade">专业班级</label>
      <input type="text" class="form-control" id="grade" readonly="readonly"name="grade" value="${user.grade}">
    </div>	
    
    <div class="form-group col-md-6">
      <label for="graduateschool">毕业学校</label>
      <input type="text" class="form-control" id="graduateschool" readonly="readonly"name="graduateschool" value="${user.graduateschool}">
    </div>
    <div>
      <label for="graduatetime">毕业时间</label>
      <input type="date" class="form-control" id="graduatetime"  readonly="readonly" name="graduatetime" value="${user.graduatetime}">
    </div>
    
      <div class="form-group col-md-6">
      <label for="email">电子邮件</label>
      <input type="text" class="form-control" id="email" name="email" value="${user.email}">
    </div>
    <div>
      <label for="ermailword" >邮编</label>
      <input type="text" class="form-control" id="emailword" name="emailword" value="${user.emailword}">
    </div>	
    
  </div>
  

  <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/normalloginindex">返回</a>
  <input type="submit" class="btn btn-primary" value="保存" onclick="return confirm('确认保存')" ></input>
</form>

   </div>
     
     
     </div>
     
     
     
</body>
</html>