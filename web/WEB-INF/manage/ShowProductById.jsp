<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>显示商品</title>
  </head>
  
  <body>
    <div>
        <div>所有的商品类别</div>
        <ul>
           <c:forEach items="${list}" var="cate1">
           <li style="color:red">${cate1.name} <a href="QueryEasybuy_Product_CategorySevlet?id=${cate1.id}" target="right">修改</a> <a href="DelEasybuy_Product_CategoryServlet?id=${cate1.id}" target="right">删除</a></li>
             <c:if test="${!empty cate1.listepc}">
             <ul>  
               <c:forEach items="${cate1.listepc}" var="cate2">          
               <li style="color:blue">${cate2.name} <a href="QueryEasybuy_Product_CategorySevlet?id=${cate2.id}" target="right">修改</a> <a href="DelEasybuy_Product_CategoryServlet?id=${cate2.id}" target="right">删除</a></li>         
                 <c:if test="${!empty cate2.listepc}">
                   <ul>
                     <c:forEach items="${cate2.listepc}" var="cate3">
                     <li style="color:green">${cate3.name} <a href="QueryEasybuy_Product_CategorySevlet?id=${cate3.id}" target="right">修改</a> <a href="DelEasybuy_Product_CategoryServlet?id=${cate3.id}" target="right">删除</a></li>
                     </c:forEach>
                   </ul>
                 </c:if> 
               </c:forEach>           
             </ul>
             </c:if>          
           </c:forEach>
        </ul>
    </div>
    
  </body>
</html>
