<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示用户名</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
     <script type="text/javascript">
            $(document).ready(function(){
                   $("#btn").click(function(){
                         $.getJSON('<%=path%>/ShowUser.action','',function(rs){                  
                               
                               for(var i=0;i<rs.length;i++){
                                    var li=$("<li></li>");
                                    li.html("<a href='${pageContext.request.contextPath}/delteAddres/"+rs[i].id+"'>"+rs[i].userName+","+rs[i].mobile+"</a>");
                                    $("#u").append(li);
                               };
                         });
                   });                  
            });
     </script>
  </head>
  
  <body>
       <button id="btn">点击</button>               
               <ul id="u">
                   
               </ul>
       
  </body>
</html>
