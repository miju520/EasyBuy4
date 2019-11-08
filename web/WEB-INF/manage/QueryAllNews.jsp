<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>显示所有新闻</title> 
  </head>
  
  <body>
    <div class="m_right">           
            <div class="mem_tit">查看新闻</div>
            <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0" cellpadding="0">
              <tr>                                                                                                                                                    
                <td width="20%">ID</td>
                <td width="20%">标题</td>
                <td width="20%">内容</td>
                <td width="20%">日期</td>
                <td width="20%">操作</td>
              </tr>
              
              <c:forEach items="${requestScope.list}" var="cate" varStatus="status">
              <tr>
                <td><font color="#ff4e00">${cate.id}</font></td>
                <td>${cate.title}</td>
                <td>${cate.content}</td>
                <td>${cate.createTime}</td>
                <td><a href="QueryDTNewsServlet?id=${cate.id}">修改</a>&nbsp;<a href="DelEasybuy_newsSevlet?id=${cate.id}">删除</a></td>
              </tr>  
              </c:forEach>       
            </table>

            <p align="center">共有${requestScope.pageCount}页，当前为${requestScope.pageindex}页
             <a href="QueryAllNewsServer?page=${1}">首页</a> 
             <a href="QueryAllNewsServer?page=${requestScope.pageindex-1}">上一页</a>
             <a href="QueryAllNewsServer?page=${requestScope.pageindex+1}">下一页</a> 
             <a href="QueryAllNewsServer?page=${requestScope.pageCount}">尾页</a>
            </p>
          

            
        </div>
  </body>
</html>
