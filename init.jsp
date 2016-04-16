<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<html lang="zh-CN">
  	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="">
    	<title>Create Table</title>
    	<!-- Bootstrap core CSS -->
    	<link href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
  	</head>

	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=
			DriverManager.getConnection("jdbc:mysql://localhost:3306/NiklausBlogs?allowMultiQueries=true","root","");
			Statement stat=conn.createStatement();
			String sql="drop database if exists NiklausBlogs;create database NiklausBlogs;"
			+"use NiklausBlogs;" +"drop table if exists User;"+
			"create table User (Uid int primary key not null,Uname varchar (12) not null" 
			+",Umail varchar (20) not null,Upwd varchar(20) not null" + ");"+
			"create table Message (Mid int primary key not null,Mname varchar (12) not null," 
			+"Mcontent varchar (200) not null,Mdate datetime not null" + ");"+
			"create table Artical (Aid int primary key not null,"+"Atitle varchar(50) not null,"
			+"Acontent varchar (2000) not null,Adate datetime not null,Amark int not null);";						
			stat.executeUpdate(sql);
		%>

		<div style="font-family:黑体;font-size:150%;float:top;margin-top:5%;
			float:left;margin-left:10%">
			数据库创建成功，转到主页
		</div>
	
		<script type="text/javascript">
			window.setTimeout("time1()","1000");
			function time1(){window.location.href="main.jsp";}
		</script>
		<%
			stat.close();
			conn.close();
		%>
	</body>
</html>
