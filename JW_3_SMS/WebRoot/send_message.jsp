<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.user"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>编写信息</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
  </head>

 <body>
 <div style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
    <img src="images/k11.jpg" width="100%" height="100%"/>  
 </div>
	<div class="container">
	
	 	<div class="suisui"><% user u =(user)session.getAttribute("user"); %>
	 	<marquee>欢 迎 <%=u.getReal_name() %> 登 录 ！  Welcome to SMS !</marquee>
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
<table>

  <tbody><tr><td><img src="images/user_body_top.gif" width="455" height="5" border="0"></td></tr>
  <tr><td style="background:url(images/user_body_bg.gif) left top repeat-y;" align="center" valign="top">
  <table width="100%" border="0" cellspacing="0" cellpadding="4">
  <form></form>
  <tbody><tr>
    <td width="79" align="right" valign="top" class="text_14c_black">收&nbsp;件&nbsp;人：</td>
    <td width="345" align="left" class="text_14_gray1">姓名</td>
  </tr>
    <tr>
    <td width="79" align="right" valign="top" class="text_14c_black">发送时间：</td>
    <td width="345" align="left" class="text_14_gray1">2008-12-25</td>
  </tr>
  <tr>
    <td align="right" valign="top" class="text_14c_black">信息内容：</td>
    <td align="left" class="text_14_gray1" style="line-height:20px;">沙发八十多了更多粉丝都不符合规划都不</td>
  </tr>

  <tr>
    <td align="right" valign="top" class="text_14c_black">&nbsp;</td>
    <td align="left"><button style="width:75px; height:25px; border:0px; background:none; cursor:hand;"><img src="images/del_button.gif"></button>&nbsp;&nbsp;<button style="width:75px; height:25px; border:0px; background:none; cursor:hand;"><img src="images/return_button.gif"></button></td>
  </tr>
  
</tbody></table>
</td></tr>
<tr><td><img src="images/user_body_bottom.gif" width="455" height="10" border="0"></td></tr>

  </tbody>

</table>
</div>

<div class="foot">
<table width="100%" border="0">
  <tr>
    <td style="line-height:20px;">版权文字<br/>
  联系信息  把百度设为主页关于百度About  Baidu百度推广<br/>
  意见反馈 京公网安备11000002000001号<br/>
    </td>
  </tr>
</table> 
</div>

</div>

</body>
</html>
