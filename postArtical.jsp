<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
  </head>
  
  <body>
  	<div style="float:top;margin-top:15%;font-family:宋体;
			float:left;margin-left:10%;width:60%">
		<!-- 发表文章 -->
		<s:form class="form-horizontal" action="postArticalAction.action" mehod="post">
			 <div class="form-group">
    			<div class="col-sm-10">
    				<label for="text" style="font-size:200%;float:left;margin-left:3%;">Publish Article</label>
      				<input type="text" name="Atitle" class="form-control" placeholder="Title"
      					style="float:left;margin-left:3%;">
      				<textarea class="form-control" rows="6" name="Acontent" 
      				style="float:left;margin-left:3%;" placeholder="Content"></textarea>
  				</div>
			</div>
			<div class="form-group">
    			<div class="col-sm-offset-2 col-sm-10" style="float:left;margin-left:3%;
    				width:15%;">
     					<button type="submit" class="btn btn-default">Submit</button>
    			</div>
    			<div class="col-sm-offset-2 col-sm-10" style="float:left;margin-left:3%;
    				width:15%;">
     					<button type="reset" class="btn btn-default">Reset</button>
    			</div>
  			</div>	
		</s:form>
		<div style="width:60%;height:10%;
   	  		float:right;margin-right:37%;float:top;margin-top:2%">
   	  		<!-- 查看所有文章-->
    		<a href="listArticalAction.action" target="right" 
    			class="btn btn-default" role="button"
    				style="width:40%;height:50%;">
    			Get All Articals
   			 </a>
   		</div>
	</div>
  </body>
</html>
