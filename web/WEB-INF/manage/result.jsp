<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>操作结果</title>
  </head>
  
  <body>
     <div target="right">
         ${msg}
         <a href="<%=path%>${requestScope.lj}">返回</a>
     </div>
  </body>
</html>
