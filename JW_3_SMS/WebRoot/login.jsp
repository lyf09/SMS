<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <base href="<%=basePath%>">    
    <title>SMS-用户登录</title>  
    <link href="css/style.css" rel="stylesheet" type="text/css" />
	
  </head>
  
 <body>
 	<div style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
    	<img src="images/xk33.jpg" width="100%" height="100%"/></div>
<div class="login">

  	<form action="servlet/Login">
      <br><br>&nbsp;用户名：<input type="text" name="userid"/><br><br>
      &nbsp;密        码：<input type="password" name="password"/><br><br>
      		<div><%
	    			if(session.getAttribute("error_msg") != null)
	    				out.print(session.getAttribute("error_msg") );
	    			
	    		%></div><br>
      &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="登录"/><br/><br/>
      
 		<div class="login1"><a href="servlet/Register">用户注册</a>&nbsp;&nbsp;<a href="forget_password.jsp" >忘记密码</a></div>
       <br>
    </form>
</div>

</body>
</html>
