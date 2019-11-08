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
    
    <title>添加收货地址</title>
    
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
            <h4>${msg}</h4>
            <form method="post" action="<%=path%>/address.action">
			         用戶名：<select name="userId">
			             <c:forEach items="${userlist}" var="l">
			                <option value="${l.id}">${l.userName}</option>
			             </c:forEach>
			          </select></br>
			             地址：<textarea rows="5" cols="40" name="address"></textarea></br>
			             时间：<input type="text" name="createTime"><br>
			     是否刪除：<input type="checkbox" name="isDefault" value="1"></br>
			            备注:<textarea rows="5" cols="40" name="remark"></textarea></br>
			         <input type="submit" value="添加">
            </form>
  </body>
</html>
