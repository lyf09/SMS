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
    
    <title>通讯录</title>
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
        <td width="1000"><a href="#">编写信息</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico03.gif" width="29" height="26" border="0" /></td>
        <td><a href="#">发件箱</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico04.gif" width="31" height="27" border="0" /></td>
        <td><a href="#">草稿箱</a></td>
      </tr>

      <tr>
       <td><img src="images/left_ico05.gif" width="24" height="28" border="0" /></td>
        <td><a href="#" >回收站</a></td>
      </tr>

      <tr>
        <td><img src="images/left_ico06.gif" width="29" height="28" border="0" /></td>
        <td><a href="#">通讯录</a></td>
      </tr>

      <tr>
         <td valign="top" style="border:0px;"><img src="images/left_ico07.gif" width="28" height="27" border="0" /></td>
        <td style="border:0px;">个人信息<br />
            <span><a href="#">修改个人资料</a><br/>
              <a href="#">修改密码</a></span> </td>
      </tr>

</table>
</div>

<div class="center6">
<table style="margin-left:200px;margin-top:0px">

  <tr>
  <td align="center0"><table  border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="470" align="center" valign="top"> <form>
    <table width="470" border="0" cellspacing="0" cellpadding="0" id="address_list" style=" border-bottom:4px #7ECAFE solid;">
  <tbody><tr style="background:url(images/address_book_top_bg.jpg) left top repeat-x;">
 
    <td width="30" align="center" valign="middle" style="border:1px #CCCCCC solid; padding:0px; height:27px;"><input type="checkbox" name="checkbox" value="checkbox"></td>
    <td width="100" align="center" valign="middle" class="text_14c_black" style="border:1px #CCCCCC solid; border-left:0px; padding:0px; height:27px;">姓名</td>
    <td width="100" align="center" valign="middle" class="text_14c_black" style="border:1px #CCCCCC solid; border-left:0px; padding:0px; height:27px;">电话号码</td>
  
  </tr>
  <tr style="background:#DDD;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
    </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12345678911</td>
  </tr>

    <tr style="background:#F5F5F5;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
   </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12545625847</td>
  </tr>

    <tr style="background:#DDD;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
    </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">15836952587</td>
  </tr>

  <tr style="background:#FFFFFF;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
   </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12525879654</td>
  </tr>

  <tr style="background:#DDD;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
   </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12525879654</td>
  </tr>

  <tr style="background:#FFFFFF;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
   </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12525879654</td>
  </tr>

  <tr style="background:#DDD;">
    <td align="center" class="text_14_gray1">
      <input type="checkbox" name="checkbox2" value="checkbox">
   </td>
    <td align="center" class="text_14_gray1"><a href="#" class="a_14_gray1">用户名</a></td>
    <td align="center" class="text_14_blue1">12525879654</td>
  </tr>

</tbody></table>

      <table width="397" border="0" cellspacing="0" cellpadding="0" style="margin-top:5px;">
          <tbody><tr>
            <td width="240" align="left" class="text_14c_black">&lt;&lt;<a href="#" class="a_14c_black">首页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">上一页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">下一页</a>&nbsp;&nbsp;<a href="#" class="a_14c_black">末页</a>&gt;&gt;</td>
            <td width="69" align="left" class="text_14_black">跳转到&nbsp;第</td>
            <td width="54" align="left" class="text_14_black"><select name="select" style="width:50px;">
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
        </form> 
    
    </td>
        <td width="10">&nbsp;</td>
        <td width="260" valign="top"><table width="260" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td><img src="images/address_book_group_top.jpg" width="260" height="35" border="0"></td>
          </tr>
          <tr>
            <td style="background:url(images/address_book_group_bg.gif) left top repeat-y; padding:5px; text-align:left; line-height:25px;" class="text_14c_gray1">
      &gt;&nbsp;<a href="#" class="a_14c_gray1">所有联系人</a><br>
      &gt;&nbsp;<a href="#" class="a_14c_gray1">家人</a><br>
      &gt;&nbsp;<a href="#" class="a_14c_gray1">同学</a><br>
      &gt;&nbsp;<a href="#" class="a_14c_gray1">同事</a><br>
      &gt;&nbsp;<a href="#" class="a_14c_gray1">朋友</a><br>
      </td>
          </tr>
      
        <tr>
            <td style="background:url(images/address_book_group_bg.gif) left top repeat-y; padding:5px; text-align:left">
      <div style="width:250px; text-align:left;" class="text_14c_blue1">[<a href="#" class="a_14c_blue1">添加分组</a>]&nbsp;&nbsp;[<a href="#" class="a_14c_blue1">删除分组</a>]</div>
      
      </td>
          </tr>
          <tr>
            <td><img src="images/address_book_group_bottom.gif" width="260" height="10" border="0"></td>
          </tr>
        </tbody></table>
    <div style="width:260px; padding:5px 0px; text-align:left;">
    <button style="width:100px; height:25px; background:none; border:0px; cursor:hand;"><img src="images/address_book_button01.gif" width="100" height="25" border="0"></button>&nbsp;&nbsp;
    <button style="width:100px; height:25px; background:none; border:0px; cursor:hand;"><img src="images/address_book_button02.gif" width="100" height="25" border="0"></button>
    </div>
    
    
    </td>
      </tr>
    </tbody></table></td>
    


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
