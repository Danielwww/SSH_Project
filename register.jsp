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
    
    <title>Sign Up</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#D4D4D4">
    <div class="container" align="center" style="background-color:#FFFFFF;width:300px;height:360px;
   	  border:3px #CCCCCC dashed;float:right;margin-right:200px;float:top;margin-top:100px"">
      <s:form class="form-signin" action="register.action" method="post">
      	<!--title-->
     	<h2 class="form-signin-heading">Please Sign Up</h2>
     	<!-- ID -->
  		<p>
    		<!--<label for="dlb.xh" class="sr-only">Name</label>  -->
    		<input type="text" name="Uname" size="20" 
    			style="width:200px;height:40px;" 
    				class="form-control" placeholder="Name"/>
    	</p>
    	<!-- password -->
  		<p>
    		<!-- <label for="dlb.kl" class="sr-only">Password</label> -->
      			<input type="password"  name="Upwd1" size="20" 
      				style="width:200px;height:40px;" 
      					class="form-control" placeholder="Password">
  		</p>
  		<!--repeat password -->
  		<p>
    		<!-- <label for="dlb.kl" class="sr-only">Repeat-Password</label> -->
      			<input type="password"  name="Upwd2" size="20" 
      				style="width:200px;height:40px;" 
      					class="form-control" placeholder="Repeat-Password">
  		</p>
   
      	<button class="btn btn-lg btn-primary btn-block"
          		 type="submit" style="width:200px;height:40px;">
          		 	Sign Up
        </button>
	</s:form>
  </div><!--/container-->
  </body>
</html>
