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
    
    <title>Home</title>
    
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
  	<s:set value="#session.user" name="user"></s:set>
    <div class="container" align="right" style="background-color:#505050;
    		width:100%;height:100%;">
    	<!-- 登录注册 -->
    	<s:if test="#user==null">
    		<h4 class="form-signin-heading">
      			Please Login:Tourist[<a href="login.jsp" target="main">Login</a>]
      			[<a href="register.jsp" target="main">Sign Up</a>]
 			</h4>
    	</s:if> &nbsp;<s:else>
    		<h4 class="form-signin-heading">
      			Visitor:<s:property value="#user.uname"/>
      			[<a href="logout.action" target="main">Logout</a>]
      			[<a href="register.jsp"  target="main">Sign Up</a>]
 			</h4>
    	</s:else>
    	<!-- 头像 -->
    	<div style="width:23%;height:14%;
   	  		float:left;margin-left:5%;float:top;margin-top:10%">
			<span><img src="image/photo.jpg" alt="" width="80" height="80"/></span>
		</div>
		<!-- 名字 -->
		<div style="width:50%;height:10%;
   	  		float:right;margin-right:5%;float:top;margin-top:5%">
			<h1 style="font-size:250%;">Ruby Wu</h1>
			<span style="font-size:120%;">Software Engineer</span>
		</div>
		<!--Home-->
		<div style="width:60%;height:10%;
   	  		float:right;margin-right:20%;float:top;margin-top:20%">
   	  		<!-- 设置主页处理的action-->
    	`	<a href="home.jsp" target="right" 
    		class="btn btn-default btn-lg active" role="button"
    			style="width:100%;height:70%;">
    			Home
    		</a>
    	</div>
    	<!--Artical-->
    	<div>
    	<div style="width:60%;height:10%;
   	  		float:right;margin-right:20%;float:top;margin-top:15%">
   	  		<!-- 设置文章处理的action
   	  		<s:property value="#user.uname"/>-->
   	  		<s:if test="#user.uname=='Ruby'">
   	  			<a href="postArtical.jsp" target="right" 
    				class="btn btn-default btn-lg active" role="button"
    					style="width:100%;height:70%;">
    			Artical
    		</a>
   	  		</s:if> <s:else>
   	  			<a href="listArticalAction.action" target="right" 
    				class="btn btn-default btn-lg active" role="button"
    					style="width:100%;height:70%;">
    			Artical
    			</a>
   	  		</s:else> 		
		</div>
		<!--Messages-->
		<div style="width:60%;height:10%;
   	  		float:right;margin-right:20%;float:top;margin-top:8%">
   	  		<!-- 设置留言处理的action-->
    		<a href="listMessageAction.action" target="right" 
    		class="btn btn-default btn-lg active" role="button"
    			style="width:100%;height:70%;">
    			Messages
   			 </a>
   		</div>
   		<!-- About Me -->
   		<div style="width:60%;height:10%;
   	  		float:right;margin-right:20%;float:top;margin-top:8%">
   	  		<!-- 设置个人信息处理的action-->
    		<a href="person.jsp" target="right"
			class="btn btn-default btn-lg active" role="button"
    			style="width:100%;height:70%;">
    			About Me
    		</a>
		</div>
    </div>
  </body>
</html>
