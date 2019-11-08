<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
   
  
    
<title>尤洪</title>
</head>
<body>  
     <div  target="right">
                        <img src="images/user.jpg" width="90" height="90" style="float:left"/>
                        <p style="float:left">                 
                            <span class="m_user">${sessionScope.name}</span><br/>
                                                                        等级：注册用户 <br />
                            <font color="#ff4e00">您还差 270 积分达到 分红100</font><br />
                            <span>上一次登录时间: 2015-09-28 18:19:47</span><br/>
                            <span>您还没有通过邮件认证 <a href="#" style="color:#ff4e00;">点此发送认证邮件</a></span>                            
                        </p>
                        <div class="m_notice" style="clear:both;margin-left:88px;">
                        	用户中心公告!
                        </div> 
                         
     </div>
</body>

</html>
