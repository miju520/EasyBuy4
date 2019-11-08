<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript">
         
               function fenye(pageindex){
                 $("#page").val(pageindex);
                 $("#userfrom").submit();
               }
            
           
            
    </script>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
   
		<div class="m_right">           
            <div class="mem_tit">查看用户</div>
            <form method="post" action="${pageContext.request.contextPath}/QueryUserInfo " id="userfrom">
                        <input type="hidden" name="pageindex" id="page"/>                          
                                           昵称：    <input type="text" name="loginName" value="${easyBuy_UserInfo.loginName}"/>
                                           用户名：<input type="text" name="userName" value="${easyBuy_UserInfo.userName}"/></br>
                                           性别：男<input type="radio" name="sex" value="1" checked="${easyBuy_UserInfo.sex==1?'"checked"':''}">&nbsp;女<input type="radio" name="sex" value="0" checked="${easyBuy_UserInfo.sex==0?'"checked"':''}">
                                           电话：   <input type="text" name="mobile" value="${easyBuy_UserInfo.mobile}"/>                 
                       <input type="submit" id="bt" value="搜索"/>
            </form>
            <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;">
              <tr>                                                                                                                                                    
                <td width="20%">昵称</td>
                <td width="25%">姓名</td>
                <td width="15%">性别</td>
                <td width="25%">电话</td>
                <td width="15%">操作</td>
              </tr>
              
              <c:forEach items="${list.pageList}" var="cate" varStatus="status">
              <tr>
                <td><font color="#ff4e00">${cate.loginName}</font></td>
                <td>${cate.userName}</td>
                <td>${cate.sex==1?"男":"女"}</td>
                <td>${cate.mobile}</td>
                <td><a href="?id=${cate.id}">修改</a>&nbsp;<a href="${pageContext.request.contextPath}/deleteUserInfo/${cate.id}">删除</a></td>
              </tr>  
              </c:forEach>       
            </table>

            <p align="center">共有${list.pageCount}页，当前为${list.pageIndex}页
             <a href="javascript:;" onclick="fenye(${1})">首页</a> 
             <a href="javascript:;" onclick="fenye(${list.pageIndex-1})">上一页</a>
             <a href="javascript:;" onclick="fenye(${list.pageIndex+1})">下一页</a> 
             <a href="javascript:;" onclick="fenye(${list.pageCount})">尾页</a>
            </p>
          

            
        </div>
    