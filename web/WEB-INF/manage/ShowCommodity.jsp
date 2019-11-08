<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>显示商品信息</title>   	
  </head>
  
  <body>
    <div>
    <form method="post" action="UpdEasybuy_Product_CategoryServlet">
      <table border="1">
         <tr>
           <td>id</td>
           <td><input type="text" name="id" readonly="readonly" value="${requestScope.easy.id}"></td>
         </tr>
         <tr>
           <td>商品名称</td>
           <td><input type="text" name="sp" value="${requestScope.easy.name}"></td>
         </tr>
         <tr>
           <td>上级类别编号</td>
           <td>
         <select name="sjlb">
            <option value="0">没有上级类别</option>  
            <c:forEach items="${requestScope.cateList}" var="cate1">
            <--取出一级类别-->
             <option value="${cate1.id}" ${cate1.id==requestScope.easy.parentId?'selected':''} style="color:red;">${cate1.name}</option>
             <c:if test="${!empty cate1.listepc}">
               <--取出二级级类别-->
               <c:forEach items="${cate1.listepc}" var="cate2">
               <option value="${cate2.id}" ${cate2.id==requestScope.easy.parentId?'selected':''} style="color:blue">-----${cate2.name}</option>
               </c:forEach>
             </c:if>
            </c:forEach>
           </select>
           </td>
         </tr>
         <tr>
           <td>类型</td>
           <td><input type="text" name="lx" value="${requestScope.easy.type}"></td>
         </tr>
         <tr>
           <td>图片</td>
           <td><input type="text" name="tp" value="${requestScope.easy.iconClass}"></td>
         </tr>
         <tr>
           <td><input type="submit" value="确认修改"></td>
         </tr>
         
      </table>
     </form>
    </div>
  </body>
</html>
