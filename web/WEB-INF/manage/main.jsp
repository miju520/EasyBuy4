<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
        
    
<title>管理员页面</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="m_top_bg">
    <div class="top">
        <div class="m_logo"><a href="Index.html"><img src="images/logo1.png" /></a></div>
        <div class="m_search">
            <form>
                <input type="text" value="" class="m_ipt" />
                <input type="submit" value="搜索" class="m_btn" />
            </form>                      
            <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
        </div>
    </div>
</div>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">账户管理</div>
                <ul>
                	<li><a href="${pageContext.request.contextPath}/QueryUserInfo" class="now"  target="right">查看所有</a></li>
                    <li><a href="Register.jsp">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">商品类别管理</div>
                <ul>
                	<li><a href="EpcQuerById" class="now" target="right">查看所有</a></li>
                    <li><a href="manage/InsertSpLb.jsp" target="right">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">商品管理</div>
                <ul>
                	<li><a href="QueryProductSevlte" class="now" target="right">查看所有</a></li>
                    <li><a href="manage/InsertProduct.jsp" target="right">新增</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">新闻管理</div>
                <ul>
                	<li><a href="QueryAllNewsServer" target="right">查看所有</a></li>
                    <li><a href="#" target="right">新增</a></li>
                </ul>
            </div>
        </div>
       <!-- 内联框架  -->
       <iframe src="${pageContext.request.contextPath}/InitRegister2" frameborder="0" name="right" width="970" height="1000" ></iframe>
	 
    </div>
	 
    
</div>

</body>


</html>
