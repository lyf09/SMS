<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>SMS-找回密码</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
    	<img src="images/xk55.jpg" width="100%" height="100%"/>
    	</div>
	<div class="forget_password">
  	<form>
  	<div class="forget_password0">-找回密码-</div><br><br>
      <br><br>&nbsp;密码问题：<input type="text" name="userid"/><br><br>
      &nbsp;密码答案：<input type="password" name="password"/><br><br><br>
 	<div class="forget_password1"><a href="" >找回密码</a></div>
       <br>
    </form>
</div>
</body>
</html>