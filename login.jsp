<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Login</title>
    
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
   <div class="container" align="center" style="background-color:#FFFFFF;width:300px;height:300px;
   	  border:3px #CCCCCC dashed;float:right;margin-right:200px;float:top;margin-top:100px">
      <s:form action="login.action" class="form-signin" method="post">
      	<!--title-->
     	<h2 class="form-signin-heading">Please Sign In</h2>
     	<!-- Name -->
  		<p>
    		<!--<label for="dlb.xh" class="sr-only">Name</label> -->
    		<div><input type="text" name="user.Uname" size="20" 
    			style="width:200px;height:40px;" 
    				class="form-control" placeholder="Name"/>
    		</div>
    	</p>
    	<!-- Password -->
  		<p>
    		<!--<label for="dlb.kl" class="sr-only">Password</label> -->
      		<div><input type="password"  name="user.Upwd" size="20" 
      				style="width:200px;height:40px;" 
      					class="form-control" placeholder="Password">
      		</div>
  		</p>
  		
      	<div class="checkbox">
        	<label>
          		<input type="checkbox"> Remember me
        	</label>
      	</div>
   
      	<button class="btn btn-lg btn-primary btn-block"
          		 type="submit" style="width:200px;height:40px;">
          		 	Sign In
        </button>
	</s:form>
  
  	<h4 class="form-signin-heading">
       If you don't register,please click <a href="register.jsp">here</a>
 	</h4>
 </div><!--/container-->
 </body>
</html>
