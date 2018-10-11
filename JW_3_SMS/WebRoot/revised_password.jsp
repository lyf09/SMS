<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.area"%>
<%@page import="com.model.user"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />


  </head>
  
 <body>
  <div style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
    <img src="images/k11.jpg" width="100%" height="100%"/>  
 </div> 
 
<div class="container">
	<div class="suisui"><% user u1 =(user)session.getAttribute("user"); %>
	 	<marquee>欢 迎 <%=u1.getReal_name() %> 登 录 ！  Welcome to SMS !</marquee>
  		</div>

  <div class="xinxi">
  <form>
  信息搜索:<input type="text" name="xinxi">
   </form>
  </div>

<div class="anniu">
   <button><a href="login.jsp">退出</a></button>
</div>
<div class="leftShadow"></div>
<div class="left">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/left_ico02.gif" width="25" height="25" border="0" /></td>
        <td width="1000"><a href="add_content.jsp">编写信息</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico03.gif" width="29" height="26" border="0" /></td>
        <td><a href="send_message.jsp">发件箱</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico04.gif" width="31" height="27" border="0" /></td>
        <td><a href="draft_box.jsp">草稿箱</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico05.gif" width="24" height="28" border="0" /></td>
        <td><a href="recycle.jsp" >回收站</a></td>
      </tr>

      <tr>
        <td><img src="images/left_ico06.gif" width="29" height="28" border="0" /></td>
        <td><a href="address_book.jsp">通讯录</a></td>
      </tr>

      <tr>
         <td valign="top" style="border:0px;"><img src="images/left_ico07.gif" width="28" height="27" border="0" /></td>
        <td style="border:0px;">个人信息<br />
            <span><a href="servlet/RevisedInformation">修改个人资料</a><br/>
              <a href="revised_password.jsp">修改密码</a></span> </td>
      </tr>

</table>
</div>



<div class="center">
<table style="margin-left:-50px;margin-top:-20px">

  <tr>
  <td width="760" align="center" style="padding-top:20px;">
  
  <table width="455" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr><td><img src="images/user_body_top.gif" width="455" height="5" border="0"></td></tr>
  <tr>
  <form></form>
  <td style="background:url(images/user_body_bg.gif) left top repeat-y; padding:0px 10px; padding-right:15px;" align="center" valign="top">
  <div style="text-align:left; padding:10px;" class="text_16c_black">修改密码</div>
  <table width="100%" border="0" cellspacing="0" cellpadding="4">
  <tbody><tr>
    <td width="20%" align="right" class="text_14c_gray1">旧密码</td>
    <td width="80%" align="left"><input type="text" name="textfield" style="width:
  260px; border:1px #CCCCCC solid; background:#F5f5f5;"></td>
  </tr>
  <tr>
    <td align="right" class="text_14c_gray1">新密码</td>
    <td align="left"><input type="text" name="textfield2" style="width:
  260px; border:1px #CCCCCC solid; background:#F5f5f5;"></td>
  </tr>
  <tr>
    <td align="right" class="text_14c_gray1">确认密码</td>
    <td align="left"><input type="text" name="textfield3" style="width:
  260px; border:1px #CCCCCC solid; background:#F5f5f5;"></td>
  </tr>
</tbody></table>

  <div style="width:100%; text-align:left; padding:10px 0px; padding-left:90px; "><input type="image" src="images/save01_button.gif" style="width:75px; height:25px;"></div>
  </td>
  </tr>
  
<tr><td><img src="images/user_body_bottom.gif" width="455" height="10" border="0"></td></tr>

  </tbody></table>
  
  
  </td>
    


</table>
</div>  




<div class="foot">
<table width="100%" border="0">
  <tr>
    <td style="line-height:20px;
	color:	#8B8989;">版权文字<br/>
  联系信息  把百度设为主页关于百度About  Baidu百度推广<br/>
  意见反馈 京公网安备11000002000001号<br/>
    </td>
  </tr>
</table> 
</div>

</div>

</body>
</html>
