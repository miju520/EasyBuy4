<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<% String path = request.getContextPath();%>
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
   <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
    
	<script type="text/javascript" src="js/lrscroll.js"></script>
    
    <script type="text/javascript" src="js/iban.js"></script>
    <script type="text/javascript" src="js/fban.js"></script>
    <script type="text/javascript" src="js/f_ban.js"></script>
    <script type="text/javascript" src="js/mban.js"></script>
    <script type="text/javascript" src="js/bban.js"></script>
    <script type="text/javascript" src="js/hban.js"></script>
    <script type="text/javascript" src="js/tban.js"></script>
    
	<script type="text/javascript" src="js/lrscroll_1.js"></script>
   
     
    <script type="text/javascript">
     var reg=false;
     $(document).ready(function(){
          $("#zh").blur(function(){//给用户名添加失去焦点事件
          var zh=$("#zh").val();//获得用户注的昵称
          if(zh==""||zh.length==0){
                return;
          }
             
         //发送ajax请求来验证昵称是否被占用
         $.getJSON("<%=path%>/CheckLogin.action","loginName="+zh,function(rs){               
	                  if(rs==1){
	                       reg=false;
	                       $("#showcheckLogin").html("昵称已被占用！"); 	                       
	                  }else{
	                       reg=true;
	                       $("#showcheckLogin").html("昵称可以使用！"); 	                      
	                  }    
         });
           
		         $("#regbtn").click(function(){
		    		 if(reg==false){
		    		    return;
		    		 }else{
		    		    var str = $("#reg_frm").serialize();//获得表单的所有请求参数并且拼接为JQuery参数字符串格式
		    		
		    		    $.getJSON("<%=path%>/RegisterController.action",str,function(abc){
			   				if(abc==0){
			   					  $("#showcheckLogin").html("注册成功！"); 
			   				}else{
			   					  $("#showcheckLogin").html("注册失败！");
			   				}		   			
		    	        });
		    		    
		    		 };                
                  });         
           });
     });         
           
    </script>
    
<title>注册页面</title>
</head>
<body>  

<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="Login.html">登录</a>&nbsp; <a href="Regist.html" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>

<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="Index.html"><img src="images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<fm:form  id="reg_frm" method="post">
            <table border="0" style="width:420px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="95">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">注册</span>
                    <span class="fr">已有商城账号，<a href="Login.jsp" style="color:#ff4e00;">我要登录</a></span><br/>
                    <span id="showcheckLogin" style="color:red;"></span>                  
                </td>
              </tr>
            
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;昵称&nbsp;</td>
                <td><input type="text" value="" name="loginName" id="zh" class="l_user" /></td>
              
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                <td><input type="text" value="" name="userName" class="l_user" /></td>
               
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                <td><input type="password" value="" name="password" class="l_pwd" /></td>
               
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                <td><input type="password" value="" name="rpassword" class="l_pwd" /></td>
              
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                <td><input type="text" value="" name="email"  class="l_email" /></td>
                
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>  
                <td><input type="text" value="" name="mobile" class="l_tel" /></td>
               
              </tr>
              <tr height="50">
                <td align="right">性别 &nbsp;</td>
                <td>
                   <input type="radio" value="1" id="man" name="sex" checked="checked"/>男
                   <input type="radio" value="0" id="women" name="sex"/>女
                </td>
                
              </tr>
              <tr height="50">
                <td align="right">ID号 &nbsp;</td>
                <td><input type="text" value="" name="identityCode" class="l_num" /></td>
                
              </tr>
              <tr height="50">
                <td align="right">ID类型(填0/1)&nbsp;</td>
                <td><input type="text" value="" name="type" class="l_num" /></td>
              </tr>              
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                    </span>
                </td>
              </tr>
              <tr height="20">
              	<td>&nbsp;</td>
                <td><input type="button" value="立即注册" id="regbtn" class="log_btn" /></td>
              </tr>
            </table>
            </fm:form>
        </div>
    </div>
</div>

<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="images/b_1.gif" width="98" height="33" /><img src="images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
 

</body>

</html>
