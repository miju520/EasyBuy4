<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>   
    <title>显示要修改的用户信息</title>
  </head>
  
  <body>
       <form method="post" action="${pageContext.request.contextPath}/UserUpdate">
       <table border="1">
            <tr>
              <td>ID</td>
              <td><input type="text" name="id" value="${user.id}" readonly="readonly"></td>
            </tr>       
            <tr>
              <td>昵称</td>
              <td><input type="text" name="loginName" value="${user.loginName}"></td>
            </tr>           
            <tr>
              <td>姓名</td>
              <td><input type="text" name="userName" value="${user.userName}"></td>
            </tr>           
            <tr>
              <td>性别</td>
              <td><input type="text" name="sex" value="${user.sex}"></td>
            </tr>           
            <tr>
              <td>电话</td>
              <td><input type="text" name="mobile" value="${user.mobile}"></td>
            </tr>
            <tr>
              <td colspan="2" align="center"><input type="submit" value="确认修改"></td>
            </tr>
       </table>
       </form>
  </body>
</html>
