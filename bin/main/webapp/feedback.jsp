<%-- 
    Document   : feedback
    Created on : 10 May, 2017, 11:54:34 AM
    Author     : Shahbaz
--%>

<%@page contentType="text/html" language="java" pageEncoding="UTF-8"%>

<!--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">-->

<html>
<head>
	<meta charset="UTF-8">
	<title>Contact and Feedback</title>
	<link rel="stylesheet" href="resources/css/style.css" media="all" type="text/css">
	
	
</head>

<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="logo">
					<a href="index.html"><img src="resources/images/logo.png" alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="navigation">
					<ul>
						<li>
							<a href="index.htm">Home</a>
						</li>
						<li>
							<a href="test.htm">Test</a>
						</li>
						<li>
							<a href="videos.htm">Videos</a>
						</li>
						<li>
							<a href="addquestion.htm">Add Questions</a>
						</li>
						<li>
							<a href="getfeedbacks.htm">Feedbacks</a>
						</li>
						<li>
							<a href="getquestions.htm">All questions</a>
						</li>
						<li class="selected">
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
							<h1>Contact</h1>
							<form action="addfeedback" method="post">
								<table>
									<tbody>
										<tr>
											<td>Name:</td>
											<td><input type="text" value="" name="name" class="txtfield"></td>
										</tr> <tr>
											<td>Email:</td>
											<td><input type="text" value="" name="mail" class="txtfield"></td>
										</tr> <tr>
											<td>Subject:</td>
											<td><input type="text" value="" name="subj" class="txtfield"></td>
										</tr> <tr>
											<td class="txtarea">Message:</td>
											<td><textarea name="msg"></textarea></td>
										</tr> <tr>
											<td></td>
											<td><input type="submit" onclick="thankyou()" value="" class="btn"></td>
										</tr>
									</tbody>
								</table>
							</form>
							<h2>Spring MVC Test Page</h2>
							<p>
								<span>Address:</span> Integral University Boys Hostel
							</p>
							<p>
								<span>Contact Number:</span> +91-9479711997
							</p>
							<p>
								<span>E-Mail ID</span> shahbaz275817@yahoo.com
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<ul class="navigation">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="about.html">About</a>
					</li>
					<li>
						<a href="rooms.html">Videos</a>
					</li>
					<li>
						<a href="dives.html">Images</a>
					</li>
					<li>
						<a href="foods.html">Downloads</a>
					</li>
					<li>
						<a href="news.html">News</a>
					</li>
					<li class="active">
						<a href="contact.html">Contact</a>
					</li>
				</ul>
				<div id="connect">
					<a href="#" target="_blank" class="pinterest"></a> <a href="http://facebook.com/shahbaz275817" target="_blank" class="facebook"></a> <a href="http://twitter.com/shahbaz275817" target="_blank" class="twitter"></a> <a href="http://googleplus.com/shahbaz275817.sk" target="_blank" class="googleplus"></a>
				</div>
			</div>
			<p>
				© 2017 by SHAHBAZ KHAN. All Rights Reserved
			</p>
		</div>
	</div>
    
<script>
function thankyou() {
    alert("Thank  You for your valuable feedback");
}
</script>
</body>
</html>