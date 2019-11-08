<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>显示新闻</title> 
  </head>
  
  <body>
     <div>
       <form method="post" action="UpdEasyBuy_newSevlte">
           <table border="1">
             <tr>
               <td>ID</td>
               <td><input type="text" value="${easybuy.id}" name="id" readonly="readonly"></td>
             </tr>
             <tr>
               <td>新闻标题</td>
               <td><input type="text" value="${easybuy.title}" name="title"></td>
             </tr>
             <tr>
               <td>新闻内容</td>
               <td><textarea name="content">${easybuy.content}</textarea></td>
             </tr>
             <tr>
               <td>新闻日期</td>
               <td><input type="text" value="${easybuy.createTime}" name="time"></td>
             </tr>
             <tr>
               <td colspan="2"><input type="submit" value="确认修改"></td>
             </tr>
           </table>
       </form>
     </div>
  </body>
</html>
