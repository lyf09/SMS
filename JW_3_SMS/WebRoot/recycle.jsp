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
    
    <title>回收站</title>
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


<div class="center4">
<table style="margin-left:200px;margin-top:-50px">

  <tr>
    <td width="760" align="center" valign="top" style="padding-top:20px;">
   <table width="760" border="0" cellspacing="0" cellpadding="0" style="background:url(images/ms_list_top_ico05.jpg) left top repeat-x; height:35px;">
   <tbody><tr>
    <td width="80" align="center" valign="middle"><a href="#"><img src="images/ms_list_top_ico01.jpg" width="60" height="35" border="0"></a></td>
    <td width="80" align="center" valign="middle"><a href="#"><img src="images/ms_list_top_ico02.jpg" width="60" height="35" border="0"></a></td>
    <td width="80" align="center" valign="middle"><a href="#"><img src="images/ms_list_top_ico03.jpg" width="60" height="35" border="0"></a></td>
    <td width="80" align="center" valign="middle"><a href="#"><img src="images/ms_list_top_ico04.jpg" width="60" height="35" border="0"></a></td>
    <td>&nbsp;</td>
  </tr>
</tbody></table>
<table width="760" cellspacing="0" cellpadding="0" border="0" style=" border-bottom:4px #7ECAFE solid;">
  <tbody><tr style="height:35px;  background:#7ECAFE;">
    <td width="40" align="center" style="border-right:1px #FFFFFF dashed;"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="center" style="border-right:1px #FFFFFF dashed;" class="text_14c_black">信息标题</td>
    <td width="200" align="center" style="border-right:1px #FFFFFF dashed;" class="text_14c_black">发件人</td>
    <td width="177" align="center" class="text_14c_black">发送日期</td>
  </tr>
    
 <tr style="height:35px; background:#DDD">
    <td width="40" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="left" class="text_14_black"><a href="#" class="a_14_black">信息标题</a></td>
    <td width="200" align="center" class="text_14_blue1">发件人</td>
    <td width="" align="center" class="text_14_gray1">发送日期</td>
  </tr> 
  <tr style="height:35px; background:#F5F5F5;">
    <td width="40" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="left" class="text_14_black"><a href="#" class="a_14_black">信息标题</a></td>
    <td width="200" align="center" class="text_14_blue1">发件人</td>
    <td width="" align="center" class="text_14_gray1">发送日期</td>
  </tr>   
  <tr style="height:35px; background:#DDD">
    <td width="40" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="left" class="text_14_black"><a href="#" class="a_14_black">信息标题</a></td>
    <td width="200" align="center" class="text_14_blue1">发件人</td>
    <td width="" align="center" class="text_14_gray1">发送日期</td>
  </tr> 
  <tr style="height:35px; background:#F5F5F5;">
    <td width="40" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="left" class="text_14_black"><a href="#" class="a_14_black">信息标题</a></td>
    <td width="200" align="center" class="text_14_blue1">发件人</td>
    <td width="" align="center" class="text_14_gray1">发送日期</td>
  </tr> 
  <tr style="height:35px;background:#DDD">
    <td width="40" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="left" class="text_14_black"><a href="#" class="a_14_black">信息标题</a></td>
    <td width="200" align="center" class="text_14_blue1">发件人</td>
    <td width="" align="center" class="text_14_gray1">发送日期</td>
  </tr>     
</tbody></table>
<table width="397" border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
  <tbody><tr>
    <td width="240" align="left" class="text_14c_black">&lt;&lt;<a href="#" class="a_14c_black">首页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">上一页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">下一页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">末页</a>&gt;&gt;</td>
    <td width="69" align="left" class="text_14_black">跳转到&nbsp;第</td>
    <td width="54" align="left" class="text_14_black">
  <select style="width:50px;">
  <option>1</option>
  <option>2</option>  
  <option>3</option>
  <option>4</option>  
  <option>5</option>
  <option>6</option>  
  </select>
  </td>
    <td width="34" align="center" class="text_14_black">页</td>
  </tr>
</tbody></table>

  
  
  
  </td></tr>

  
  
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
