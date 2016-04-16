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
    	<div style="float:top;margin-top:3%;font-family:宋体;font-size:40%;
			float:left;margin-left:2%;width:60%">
    		<h1>Message</h1>
			<table name="table" class="table">
				<!-- 迭代列出所有留言  -->
				<tr>
  					<td align="left">Photo</td>
  					<td align="left">Visitor</td>
  					<td align="left">Content</td>
  					<td align="left">Time</td> 				
  				</tr>
				<s:iterator value="#request.list" id="mes">
  					<!-- 头像 -->
  					<tr>
						<td align="left"><img src="image/message.png" alt="" width="30" height="30"/></td>
  						<td align="left"><s:property value="#mes.Mname"/></td>
  						<td align="left"><s:property value="#mes.Mcontent"/></td>
  						<td align="left"><s:property value="#mes.Mdate"/></td> 				
    				</tr>
    			</s:iterator>
			</table>
		</div>
		<!-- 发表留言 -->
		<s:form class="form-horizontal" action="postMessageAction" mehod="post">
			 <div class="form-group">
    			<div class="col-sm-10">
    				<label for="text" style="float:left;margin-left:3%;">Leave a message</label>
      				<textarea class="form-control" rows="6" name="Mcontent" 
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
	</div>
  </body>
</html>
