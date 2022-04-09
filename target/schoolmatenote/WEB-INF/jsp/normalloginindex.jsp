<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校友录系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script >
//通讯录
function method2()
{   document.getElementById("search").setAttribute("name","userid");
    document.getElementById("search").setAttribute("value","${userid}"); 
    document.getElementById("work1").style.display="none";
    document.getElementById("work").style.display="none";
	document.getElementById("graduateschool1").style.display="none";
    document.getElementById("graduateschool").style.display="none";
	document.getElementById("form").setAttribute("action","${pageContext.request.contextPath}/findTelephoneNoteByManynormal"); 
	document.getElementById("form").setAttribute("target", "iframe1");

	document.getElementById("iframe1").setAttribute("src", "${pageContext.request.contextPath}/findTelephoneNoteByManynormal");
	document.getElementById("personal").setAttribute("href", "${pageContext.request.contextPath}/findTeleByUserIdToPerson");
	document.getElementById("personal").innerHTML="个人信息";

	} 
//校友录
function method1()
{   document.getElementById("search").setAttribute("name", "userid");
    document.getElementById("search").setAttribute("value", "${userid}");
    if(document.getElementById("work").style.display=="none"&&document.getElementById("work1").style.display=="none")
    	{    document.getElementById("work1").style.display="inline";
    	     document.getElementById("work").style.display="inline";
}
    if(document.getElementById("graduateschool").style.display=="none"&&document.getElementById("graduateschool1").style.display=="none")
    	{
        document.getElementById("graduateschool").style.display="inline";
        document.getElementById("graduateschool1").style.display="inline";

    	}
	document.getElementById("form").setAttribute("action", "${pageContext.request.contextPath}/findUserByManyConditionnormal");
	document.getElementById("form").setAttribute("target", "iframe1");
	document.getElementById("iframe1").setAttribute("src", "${pageContext.request.contextPath}/findUserByManyConditionnormal");
	document.getElementById("personal").setAttribute("href", "${pageContext.request.contextPath}/findUserByUserIdToPerson");
	document.getElementById("personal").innerHTML="个人信息";

	} 

	//留言录
function method3()
	{   
	    document.getElementById("search").setAttribute("name", "userid");
	    document.getElementById("search").setAttribute("value", "${userid}");
		document.getElementById("work1").style.display="none";
	    document.getElementById("work").style.display="none";
		document.getElementById("graduateschool1").style.display="none";
	    document.getElementById("graduateschool").style.display="none";
		document.getElementById("form").setAttribute("action", "${pageContext.request.contextPath}/normalfindMessageByUserId");
		document.getElementById("form").setAttribute("target", "iframe1");
		document.getElementById("iframe1").setAttribute("src", "${pageContext.request.contextPath}/normalfindMessageByUserId");
		document.getElementById("personal").setAttribute("href", "${pageContext.request.contextPath}/findMessageByUserIdToPerson");//设置属性
		document.getElementById("personal").innerHTML="我的留言";


	}
	

 
</script>
</head>
<body style="background:url(${pageContext.request.contextPath}/image/1-5.jpg);
">
<div class="container-lg">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <span class="navbar-brand" style="font-weight: bold">欢迎你,${User.username}</span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
       <li class="nav-item active">
        <a class="nav-link" href="iindex2">返回首页</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="ccontact2">联系我们</a>
      </li>
      
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
          个人中心
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/findUserByUserIdToPerson"  id="personal">个人信息</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/exit" onclick="return confirm('确定退出?')">退出登录</a>
          </div>
      </li>
    </ul>
    </div>
    <form class="form-inline my-4 my-lg-0" action="#" method="post" id="form" name="form">
    <!--id为select  -->
      <input class="form-control mr-sm-2" type="text" placeholder="请输入查找的学号" aria-label="Search"  id="search">
      <label id="work1" class=" form-label ">工作:</label>
      <select  class="form-control mr-sm-2 " id="work" name="work"  >
      <option>请选择</option>
      <!-- c:if 好处是提高代码的健壮性(跟传进来的数据作比较，相等就将option里面的value上传后台)(option的value属性没写则会返回标签的内容) -->
      <!-- 进一步说明EL语句在jsp启动时就会生效,里面的内容可以放name值(如下),model.addatrribute的参数(类似键),session.setattribute的参数,对象的属性(如:查找到了一个customer对象，可以将它的属性用${customer.id}等的形式显示出这个customer对象的属性id值)() -->
      <option value="党内机关" > 党内机关</option>
      <option value="事业单位" >事业单位</option>
      <option value="私营企业" >私营企业</option>
      <option value="党政机关" >党政机关</option>
      <option value="民营企业" >民营企业</option>
      </select>
      
    
     
    <label id="graduateschool1" class="-form-label">毕业学校:</label>
      <select  class="form-control mr-sm-2" id="graduateschool" name="graduateschool">
      <option>请选择</option>
      <option value="厦门工学院" >厦门工学院</option>
      <option value="华侨大学" >华侨大学</option>
      <option value="西安交通大学">西安交通大学</option>
      <option value="厦门理工学院">厦门理工学院</option>
      </select>
    
      <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="查询"></input>
    </form>
   
</nav>
<div class="row">
  <div class="col-2">
    <div class="list-group" id="list-tab" role="tablist">
      <div class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home" id="schoolmate" onclick="method1()">校友录</div>
      <div class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" id="telephone" onclick="method2()">通讯录</div>
      <div class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#messages" role="tab" aria-controls="messages"onclick="method3()" >留言录</div></div>
  </div>
  <div class="col-10">
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
      <div class="embed-responsive embed-responsive-16by9">
      <iframe class="embed-responsive-item" id="iframe1" name="iframe1"></iframe>
      </div>
      </div>
      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
       <div class="embed-responsive embed-responsive-16by9">
       	<iframe class="embed-responsive-item" id="iframe2" name="iframe2"></iframe>
       </div>
       </div>
      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
       <div class="embed-responsive embed-responsive-16by9"><iframe class="embed-responsive-item" id="iframe3" name="iframe3"></iframe>
       </div>
       </div>
     
    </div>
  </div>
</div>
  </div>
</body>

</html>