<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.area"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>注册页面</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
<body>
<div style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
    <img src="images/beijing.jpg" width="100%" height="100%"/>  
  </div> 
<div class="zhuce" >
  <form action="servlet/RegisterExe" method="get">
      <br>
      &nbsp;用户 ID：<input type="text" name="userid"/><br><br>
      &nbsp;真实姓名：<input type="text" name="real_name"/><br><br>

      &nbsp;性&nbsp;&nbsp;别:
      &nbsp;男<input type="radio" name="sex" value="男"/>
      &nbsp;女<input type="radio" name="sex" value="女"/><br><br>

      &nbsp;手 机 号：<input type="text" name="mobile"/><br><br>

      &nbsp;所在地区：
        <select name="area_id">
        <%
      	  ArrayList<area> list = (ArrayList<area>)request.getAttribute("list");
        	for(int i=0;i<list.size();i++){
        		area a = list.get(i);
        %>
          <option value="<%=a.getId() %>"> <%=a.getTitle() %> </option>
          <%} %>
        </select><br><br>
      &nbsp;密&nbsp;&nbsp;码：<input type="password" name="password"/><br><br>
      &nbsp;确认密码：<input type="password" name="password"/><br><br>
        
      &nbsp;密码问题：<input type="text" name="question"/><br><br>
           
      &nbsp;&nbsp;密码答案：<input type="text" name="answer"/><br><br>     
      &nbsp;邮&nbsp;&nbsp;箱：<input type="text" name="email"/><br><br>
      <div class="zhushi"> <p>注：以上均为必填项，请认真填写!</div>
       <div>&nbsp;&nbsp;&nbsp;<input type="submit" value="提交注册"/> 
            &nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/> 
       </div>
       <br>
    </form>
</div>
  </body>
</html>
