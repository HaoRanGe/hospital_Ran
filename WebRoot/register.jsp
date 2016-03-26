<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>

  <body>
    <div style="width: 70%;margin-top: 40px;margin-left: auto;margin-right: auto;">
    
	<form class="form-horizontal" action="<c:url value="/registerController.html"/>" method="post">
	  <div class="form-group">
	    <label for="name" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="name" placeholder="请输入姓名">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="age" class="col-sm-2 control-label">年龄</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="age" placeholder="请输入年龄">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="gender" class="col-sm-2 control-label">性别</label>
	    <div class="col-sm-10">
	      <label>
		      <input type="radio" name="gender" id="optionsRadios1" 
		         value="male" checked>男
		  </label>
		  <label>
		      <input type="radio" name="gender" id="optionsRadios2" 
		         value="female">女
		   </label>
	    </div>
	   </div>
	  <div class="form-group">
	    <label for="address" class="col-sm-2 control-label">地址</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control"  name="address" placeholder="请输入地址">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="dateOfBirth" class="col-sm-2 control-label">出生日期</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="dateOfBirth" placeholder="请输入出生日期">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="" class="col-sm-2 control-label">身份证号</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="idcardNo" placeholder="请输入身份证号">
	    </div>
	  </div>
	  <div class="form-group">
	      <label for="name" class="col-sm-2 control-label" >预约科室、医生</label>
	      <div class="col-sm-4">
		      <select id="departments_select" class="form-control input-lg">
					<option value='1'>1</option>
					<option value='2'>2</option>
					<option value='3'>3</option>
				</select>
			
		  </div>
		  <div class="col-sm-4">
		  		<select id="doctors_select" class="form-control input-lg">
				</select>
		  </div>
		  <label class="col-sm-2">
			  	<input id="doctor_search" type="button" value="查询医生" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
		  </label>	
	   </div>
	   <div class="form-group">
	   		<label class="col-sm-offset-2 col-sm-10">
	   			<input class="btn btn-success" type="submit" value="提交">
	   		</label>
	   </div>
	</form>


	<!-- 弹出框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">标题</h4>
	      </div>
	      <div id="modal_table" class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary">提交</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<script>
		/*选择功能*/
				var departments_temp='';
				var departments_select_val='';
				var doctors_temp='';
				var doctors_select_val='';
				$("#departments_select").click(function(){
					departments_select_val=$("#departments_select").val();
					if (departments_select_val==1)
					{
						departments_temp='<option value="1">1</option>';
					}
					else if (departments_select_val==2)
					{
						departments_temp='<option value="2">2</option>';
						departments_temp+='<option value="3">3</option>';
					}
					else if (departments_select_val==3)
					{
						departments_temp='<option value="3">3</option>';
						departments_temp+='<option value="4">4</option>';
						departments_temp+='<option value="5">5</option>';
					}
					$("#doctors_select").html(departments_temp);
				});
		
				$("#doctor_search").click(function(){
					doctors_select_val=$("#doctors_select").val();
					if (doctors_select_val==1)
					{
						doctors_temp='<table class="table table-hover table-bordered"><tr>';
						doctors_temp+='<th>1</th>';
						doctors_temp+='</tr></table>';
					}
					else if (doctors_select_val==2)
					{
						doctors_temp='<table class="table table-hover table-bordered"><tr>';
						doctors_temp+='<th>2</th><th>2</th>';
						doctors_temp+='</tr></table>';
					}
					else if (doctors_select_val==3)
					{
						doctors_temp='<table class="table table-hover table-bordered"><tr>';
						doctors_temp+='<th>3</th><th>3</th><th>3</th></tr>';
						doctors_temp+='<tr><td>3.1</td><td>3.1</td><td>3.1</td>';
						doctors_temp+='</tr></table>';
					}
					else
					{
						doctors_temp="...";
					}
					$("#modal_table").html(doctors_temp);	
				});
	</script>
</div>	
  </body>
</html>
