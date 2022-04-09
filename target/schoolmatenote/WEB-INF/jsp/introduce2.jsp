<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学校简介</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/activity.css">   
</head>
<style>
body{
background-image:url(image/1-5.jpg);
}

</style>
<body>
<!-- 头部 -->
<div style="margin 0 auto;width: 100%">
<span  style=" float: left;font-weight: bold">欢迎你,${User.username}</span>
<div style="width: 1200px;height: 50px;margin: 0 auto"><img src="./image/1.png" width="1200px" height="50px"></div>
<div style="width: 1200px;height: 100px;margin: 0 auto"><img src="./image/8.png" width="1200px" height="100px"></div>
<!-- 导航条 -->
 <div class="menu">
   	<span><a href="iindex2">返回首页</a></span>
   	<span>学校概况</span>
   	<span>师资队伍</span>
   	<span>教学管理</span>
   	<span>实践教学</span>
   	<span>科学与研究</span>
   	<span>党建工作</span>
   	<span>资源下载</span>
   </div>
<!-- bootstrap列表 -->
 <div style="width: 1200px;margin: 0 auto">
 <div class="row" style="float: left;">
  <div class="col-6">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#" role="tab" aria-controls="home">学校简介</a>
      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">组织机构</a>
      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="ccontact2" role="tab" aria-controls="messages">联系我们</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="normalloginindex" role="tab" aria-controls="settings">个人中心</a>
    </div>
  </div>
  <div class="col-6">
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list"></div>
      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
      <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
    </div>
  </div>
  
  
  
  
</div>
 
 <!--列表右侧 -->
 <div style="width: 900px;float: left;">
 <div style="font-size: 22px;color: red;font-weight: bold;margin-top:20px;border-bottom: 3px solid #999">学校简介
 <span style="font-size: 15px;color: #999;font-weight: bold;">INTRO OF UNIVERSITY</span>
 </div>
   
   
   <div class="jumbotron jumbotron-fluid" style="width: 930px;margin-top: 10px;background: #E6E6FA">
  <div class="container">
    <h1 class="display-4"><img src="./image/14.jpg"></h1>
    <p class="lead" style="width: 900px;">
         <p style="font-size: 15px;font-weight: bold;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院是2009年经国家教育部批准设立的一所普通本科高校，2019年通过教育部本科教学工作合格评估。学校座落在中国著名的海上花园城市——福建省厦门市，人文环境优美，四季气候宜人。
            海、陆、空交通便捷，是最适合人的居住、读书、研究、就业、创业的好地方。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院被评选为“全国最美校园”，实至名归。学校建成了公园式的校园，繁花芬芳、鸟语花香，文化气息浓厚，校园规划建筑古朴厚重、大气经典，
         园林景观优雅新颖、休闲空间十分精致、美轮美奂，让人叹为观止。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院的教学、图书、实训、实践、体育、艺术等场馆以及学生社区生活设施设备都先进齐全，处处体现了人文关怀，是老师和学生学习、工作、生活的理想殿堂。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院秉承“立德树人，以文化人”的教育理念，以“百年树人，百年名校”为办学愿景，恪守“明志、博学、修身、力行”的校训精神，认真践行现代大学理念，建立实现现代大学制度。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院以“博雅教育、知识（专业）教育、能力培养”三位一体为人才培养方向，以市场雇主对新时代人才十大能力要求为培养目标：“一是人格魅力；二是终身自主学习能力；三是组织领导设计能力；四是解决复杂问题的能力；五是批判性思维；六是创造创新能力；七是情商；八是沟通谈判能力；九是专业技术能力；十是精细化做事执行力。”旨在培养出适应二十一世纪经济建设和社会发展需要的复合型、创新型高素质人才。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门工学院围绕创建“百年名校”的目标，构建了“文学、理学、工学、商学、艺术学”5大学科门类，建成8个学术机构、35个本科专业，在校生达10000多人，教职工近1000人。学校以理工科为主，其他学科协同发展。以契合产业和社会发展急需人才为培养方向，构建和发展计算机科学、信息科学、数据科学、人工智能、机器人、智能建筑、跨境电商、网络新媒体等新兴科学技术领域专业。每年为社会输送3000多名本科毕业生，有许多优秀学生纷纷考上国内外名校攻读硕士和博士学位，或走上建设国家的各行各业的岗位，就业率一直都在高位，大部分毕业生留在厦门市工作，深受社会和企业的欢迎和好评。</p>
         <p style="font-size: 15px;font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“大学为学生，为学生的终身发展做好准备，以博雅教育养成人格，以知识教育获得科学技术、以实践教育培养综合能力。”在大学四年的学习中，学生必须在广泛的知识领域中畅游，从而理解不同的学科思维和方法。目的是让学生发展出可以在各个领域之间转换的技能，可以胜任任何学科和未来职业，适应未来社会发展的需要。同时在自己的私人领域，成为真诚秉持正义、同情弱者的君子，对社会有担当、对他人充满责任心的好公民。</p>
    </p>
  </div>
</div>
 </div>
 
 
 </div>
 <!--
 <div style="width: 100%;margin: 0 auto;height: 180px;background: #E6E6FA;margin-top: 1150px">
  <div style="padding-top: 30px;padding-left: 50px"><img src="./img/bottom-logo.png"></div>
 </div>
   -->

</div>

<!--  -->
</body>
</html>