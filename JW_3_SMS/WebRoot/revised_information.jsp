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
    
    <title>个人信息修改</title>
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



<div class="center1">
<table style="margin-left:-50px;margin-top:-20px">

  <tr>
 <td width="760" align="center" style="padding-top:20px;">
  
  <table width="455" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr><td><img src="images/user_body_top.gif" width="455" height="5" border="0"></td></tr>
  <tr>
  <form action="servlet/Update" method="get">
  <%
  	user u = (user)session.getAttribute("user");
   %>
  <td style="background:url(images/user_body_bg.gif) left top repeat-y; padding:0px 10px; padding-right:15px;" align="center" valign="top">
  <div style="text-align:left; padding:10px;">-修改个人资料-</div>
  <table width="100%" border="0px" cellspacing="0" cellpadding="4" style="border-bottom:1px #CCCCCC dashed;">
      <tbody>
      <tr>
        <td width="77" align="right">用&nbsp;户&nbsp;id：</td>
        <td width="132" align="left"><input name="userid" type="text" value="<%=u.getUserid() %>" style="width:107px; background:#F5F5F5; color:#666666; border:1px #CCCCCC solid;"></td>
        <td width="100" >真实姓名：</td>
        <td width="109" align="left"><input name="real_name" type="text" value="<%=u.getReal_name() %>" style="width:107px; background:#F5F5F5; color:#666666; border:1px #CCCCCC solid;"></td>
      </tr>
      
      <tr>
        <td align="right">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
      	<td><br>男<input type="radio" name="sex" value="男"<%if(u.getSex().equals("男")){out.print("checked='checked'");} %>/>
    		女<input type="radio" name="sex" value="女"<%if(u.getSex().equals("女")){out.print("checked='checked'");} %>/><br><br> 	
        </td>
        <td align="right">手 机 号：</td>
        <td align="left"><input name="mobile" type="text" value="<%=u.getMobile() %>"style="width:107px; background:#F5F5F5; color:#666666; border:1px #CCCCCC solid;"></td>
      </tr>
      
      <tr>
        <td>所在地：</td>
        <td align="left"><br><select name="area_id">
        <%
      	  ArrayList<area> list = (ArrayList<area>)request.getAttribute("arealist");
        	for(int i=0;i<list.size();i++){
        		area a = list.get(i);
        		if(a.getId()==u.getArea_id()){
        %>
          <option value="<%=a.getId() %>" selected="selected"> <%=a.getTitle() %> </option>
          <%	} 
               else{
                %>
          <option value="<%=a.getId() %>"> <%=a.getTitle() %> </option>
          <%	} 
         
          	
          	}
          %>
        </select><br><br></td>
        <td align="right">&nbsp;</td>
        <td align="left">&nbsp;</td>
      </tr>
      
    </tbody>
    </table>
  <div style="width:100%; text-align:center; padding:10px 0px;"><input type="image" src="images/save01_button.gif" style="width:75px; height:25px;"></div>
  </td>
  
  </tr>
</form>
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
