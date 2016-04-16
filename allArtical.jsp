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
  	<s:set value="#request.list" name="list"></s:set>
  	<div class="container">
    	<div style="float:top;margin-top:5%;font-family:宋体;
			float:left;margin-left:2%;width:60%;font-size:130%">
    		<h1>Article</h1>
			<table name="table" class="table" style="float:top;
				margin-top:5%;font-family:宋体;">
				<tr>Title</tr>
				<!-- 迭代列出所有文章标题  -->
				<s:iterator value="#request.list" id="ar">
  					<tr>
  						<td align="left">
  							<!-- 点击文章标题,跳转到文章正文 -->
  							<a href="articaLlistAction.action?title=${ar.atitle}"><s:property value="#ar.atitle"/></a>
  						</td>
  					</tr>  		
    			</s:iterator>
			</table>
		</div>
	</div>
  </body>
</html>
