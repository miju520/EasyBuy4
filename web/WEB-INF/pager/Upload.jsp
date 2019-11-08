<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文件上传</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
         <h4>文件上传</h4><br>
         <form method="post" action="<%=path %>/fileupload.action" enctype="multipart/form-data">
                                   请选择要上传的文件1：<input type="file" value="选择文件" name="zp"/><br>
                                   请选择要上传的文件2：<input type="file" value="选择文件" name="zp"/><br>
                              <input type="submit" value="提交"/>
         </form>
  </body>
</html>
