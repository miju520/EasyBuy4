<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
   
    <script type="text/javascript">
                      $(document).ready(function(){
                        //加载所有一级类别
                        $.getJSON("/EasyBuy/ajaxQuerCateServlet","parentId="+0,function(rs){
                          //成功或的方法
                          var select=$("[name=yjlb]");//获得一级类别下拉框
                          for(var i=0;i<rs.length;i++){
                              var cate=rs[i];                   
                              var option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");                       
                              select.append(option);
                          }
                        });
                        //2.给二级类别的select加change中事件
                        $("[name=yjlb]").change(function(){                       
                            $("[name=ejlb]").html("");//清空二，三级类别下拉框
                            $("[name=sjlb]").html("");                          
                            var parentId=$(this).val();//获得当前下拉框选中的项的值，里面有类别ID						
                            $.getJSON("/EasyBuy/ajaxQuerCateServlet","parentId="+parentId,function(rs){
                            	//成功后的方法
	                            var select=$("[name=ejlb]");//获取二级类别的下拉框
	                            for(var i=0; i<rs.length;i++){
	                                var cate=rs[i];
	                                var option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
	                                select.append(option);
                                }
                                select.change();//手动调用二级类别的下拉框的change事件
                            });
                        });
                        //3.给三级类别的select加change中事件
                         $("[name=ejlb]").change(function(){                        
                            $("[name=sjlb]").html("");//清空三级类别下拉框
                            var parentId=$(this).val();//获得当前下拉框选中的项的值，里面有类别ID
                            $.getJSON("/EasyBuy/ajaxQuerCateServlet","parentId="+parentId,function(rs){
                            	//成功后的方法
	                            var select=$("[name=sjlb]");//获取二级类别的下拉框
	                            for(var i=0; i<rs.length;i++){
	                                var cate=rs[i];
	                                var option=$("<option value='"+cate.id+"'>"+cate.name+"</option>");
	                                select.append(option);
                                }
                          
                            });
                        });
                      });
                   </script>
<html>
  <head> 
    <title>添加商品</title>
  </head>
  
  <body>
     <div class="m_right">
            <p></p>
            <div class="mem_tit">添加商品</div>
           	<form method="post" action="/EasyBuy/AddProductSevlte" enctype="multipart/form-data">
            <table border="0" style="width:880px; margin-top:20px;">
              <tr>
                <td align="right">商品名称&nbsp; &nbsp;</td>
                <td><input type="text" value="" class="add_ipt" name="spmc" style="width:290px;" /></td>
              </tr>
              <tr valign="top" height="110">
                <td align="right">商品详情 &nbsp; &nbsp;</td>
                <td style="padding-top:5px;"><textarea class="add_txt" name="spxq"></textarea></td>
              </tr>
              <tr>
                <td align="right">商品价格&nbsp; &nbsp;</td>
                <td><input type="text" value="" class="add_ipt" name="spjg" style="width:290px;" /></td>
              </tr>
              <tr>
                <td align="right">库存数量&nbsp; &nbsp;</td>
                <td><input type="text" value="" class="add_ipt" name="kcsl" style="width:290px;" /></td>
              </tr>
              <tr>
                <td align="right">一级类别&nbsp; &nbsp;</td>
                <td><select name="yjlb"></select></td>
              </tr>
              <tr>
                <td align="right">二级类别&nbsp; &nbsp;</td>
                <td><select name="ejlb"></select></td>
              </tr>
              <tr>
                <td align="right">三级类别&nbsp; &nbsp;</td>
                <td><select name="sjlb"></select></td>
              </tr>
              <tr height="45">
                <td width="80" align="right">是否已删除 &nbsp; &nbsp;</td>
                <td>                            
                	<input type="checkbox" value="1" name="sfsc" />                
                </td>
              </tr>                         
              <tr height="45">
                <td align="right">上传文件 &nbsp; &nbsp;</td>
                <td><input type="file" name="scwj"/></td>
              </tr>
              <tr height="50">
                <td>&nbsp;</td>
                <td style="line-height:20px;">
                	<font color="#ff4e00">小提示：</font><br />
                                                   您可以上传以下格式的文件：gif、jpg
                </td>
              </tr>
              <tr height="50" valign="bottom">
                <td>&nbsp;</td>
                <td><input type="submit" value="提交" class="btn_tj" /></td>
              </tr>
            </table>
            </form>
        </div> 
  </body>
</html>
