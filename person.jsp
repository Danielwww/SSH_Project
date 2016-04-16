<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>About Me</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div class="container">
		<div  style="float:top;margin-top:1%;float:left;margin-left:12%;
			font-family:宋体;font-size:120%;width:60%;">
			<h1>About Me</h1><br>
			<p>
				吴丹,女,一个90后普通女孩,个性中性,喜欢运动,尤其喜欢打篮球,目前还是一位大三的学生.
				从以前浑浑噩噩的生活变成现在有目标有规律的日子,经历了无所事事才发现有目标的生活是
				多么美好.但是偶尔也会给自己放松,看看电影,打打篮球.
			</p> <p>
				人生就是个得与失的过程,得到一些东西就会失去一些东西,虽然当初如愿以偿的到外地读书,
				却失去了很多与父母家人共享天伦的机会,然而正是这样,使我快速的成长,心智逐渐成熟,经历
				了风雨才会更快的长大.
			</p> <p>
				在这几年的摸索中,逐渐发现了自己的兴趣,对java情有独钟,所以一直在坚持学习,直到现在.
				希望自己能够在这条路上坚持下去,因为我是一个没有长兴的人,能坚持下来的东西很少,不过
				这件事我会努力坚持到底的!
			</p>  <p>
				这个博客很久之前就像做了,当时顾虑自己的技术不好一直没有开始做,但是现在我想通了,没有人
				第一次就会做得完美的,经验是靠积累的,一个网站也是需要逐步完善的,所以至少先把它做出来,
				然后逐步完善,这才是最好的.
			</p>  <p>
				我做这个博客主要整理一些技术类的教程文章,还有一些免费软件的下载,给一些网友提供帮助,
				本人也不是一个技术大牛,只是自己在实践过程中的经验给其他学者一些借鉴,有什么不足的地方
				希望各位大神指点指点.
			</p> <br><br><br>
		</div>
	</div>
  </body>
</html>
