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
    <div align="left" style="float:top;margin-top:8%;font-family:宋体;float:left;margin-left:20%;
			font-size:100%">
		<!-- 文章标题 -->
    	<h1><s:property value="#request.blog.atitle"/></h1>
    </div>
    <div style="float:top;margin-top:5%;float:left;margin-left:20%;
			margin-bottom:10%;font-family:宋体;font-size:150%;width:60%;height:80%">
  		<!-- 文章正文 -->
  		<s:property value="#request.blog.acontent"/>
	</div>
  </body>
</html>
