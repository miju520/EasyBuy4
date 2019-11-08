<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
   
    <script type="text/javascript">
           $(document).ready(function(){
                       //1加载所有一级类别
                        $.getJSON("/EasyBuy/ajaxQuerCateServlet","parentId="+0,function(rs){
                          //成功或的方法
                          var select=$("[name=fjlb]");//获得一级类别下拉框
                          for(var i=0;i<rs.length;i++){
                              var cate=rs[i];  
                              var option=null;                             
                              option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");                                         
                              select.append(option);
                          }
                        });
           
                        //2.给二级类别的select加change中事件
                    $("[name=fjlb]").change(function(){                        
                         $("[name=ejlb] option:gt(0)").remove();                                                   
                         var parentId=$(this).val();//获得当前下拉框选中的项的值，里面有类别ID						
                         $.getJSON("/EasyBuy/ajaxQuerCateServlet","parentId="+parentId,function(rs){
                               //成功后的方法
	                            var select=$("[name=ejlb]");//获取二级类别的下拉框
	                            for(var i=0; i<rs.length;i++){
	                                var cate=rs[i];
	                                var option=null;
	                               
	                                option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");	                               
	                                select.append(option);
                                }
                                        
                                select.change();//手动调用二级类别的下拉框的change事件                                                 	                          
                        });
                    });
                      
           });
    </script>
<html>
  <head>
    <title>新增商品类别</title>
  </head>
  
  <body>
    <div>
       <h4 style="color:blue">添加商品类别</h4>
       <form method="post" action="<%=path%>/InsEasybuy_Product_CategoryServlet">
          <table border="1">
                 <tr>
                    <td>商品类别名称</td>
                    <td><input type="text" name="splb"></td>
                 </tr>
                 <tr>
                    <td>商品父级类别</td>
                    <td>
                        <select name="fjlb"><option value="0">一级类别</option></select>
                        <select name="ejlb"><option value="">二级类别</option></select>
                    </td>                   
                 </tr>
                 <tr>
                   <td>所属级别</td>
                   <td>
                       <select name="ssjb">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                       </select>
                   </td>
                 </tr>
                   
                 <tr><td colspan="2" align="center"><input type="submit" value="确认添加" ></td></tr>
           </table>
        </form>
    </div>
  </body>
</html>
