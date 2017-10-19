<%-- 
    Document   : about
    Created on : Sep 24, 2017, 11:44:48 PM
    Author     : Shahbaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>About Page</title>
<link href="resources/AboutPageAssets/styles/aboutPageStyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Slab">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js" type="text/javascript"></script>

<style>
    .container-fluid .navrow{
                background: #34495e;
                font-family: "Open Sans";
                line-height: 50px;
            }
            .container-fluid .navrow span{
                text-align: center;
                display: inline-block;
                height: 50px;
                border-left: 2px solid #2c3e50;
                border-right: 2px solid #2c3e50;
                font-size: 15px;
            }
            .container-fluid .navrow span a{
               text-decoration: none;
                color: white;
                display: inline-block;
                width: 100%;
                transform: translateX(-10%);
                position: relative;
                right: -10%;
            }
            .container-fluid .navrow span:hover{
                background: #95a5a6;
            }
    
</style>

</head>

<body>

<div class="container-fluid">
            <div class="row navrow">
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="index.htm">Home</a></span>
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="test.htm">Test</a></span>
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="videos.htm">Videos</a></span>
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="addquestion.htm">Add questions</a></span>
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="getfeedbacks.htm">Feedbacks</a></span>
                <span class="col col-xs-6 col-sm-2"><a class="nav-link" href="getquestions.htm">All questions</a></span>
            </div>
</div>
<div id="body-main">
<!-- Header content -->
<header>
  <div class="profileLogo"> 
    
    <p class="logoPlaceholder"><img src="resources/images/lightning.png" alt="sample"></p>
  </div>
  <div class="profilePhoto"> 
    <!-- Profile photo --> 
    <img src="resources/images/LRM_EXPORT_20170903_000224 - Copy (2).jpg" alt="sample"> </div>
  <!-- Identity details -->
  <section class="profileHeader">
    <h1>SHAHBAZ KHAN</h1>
    <h3>BACKEND WEB DEVELOPER</h3>
    <hr>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in.</p>
  </section>
  <!-- Links to Social network accounts -->
  <aside class="socialNetworkNavBar">
    <div class="socialNetworkNav"> 
      <!-- Add a Anchor tag with nested img tag here --> 
      <a href="http://www.facebook.com/shahbaz275817"><img src="resources/images/fb.png" alt="sample"></a></div>
    <div class="socialNetworkNav"> 
      <!-- Add a Anchor tag with nested img tag here --> 
      <a href="http://www.twitter.com/shahbaz275817"><img src="resources/images/twitter.png"  alt="sample"></a> </div>
    <div class="socialNetworkNav"> 
      <!-- Add a Anchor tag with nested img tag here --> 
      <a href="http://www.github.com/shahbaz275817"><img src="resources/images/gh.png"  alt="sample"> </a></div>
    <div class="socialNetworkNav"> 
      <!-- Add a Anchor tag with nested img tag here --> 
		<a href="http://linkedin.com/shahbaz275817"><img src="resources/images/linkedin.png"  alt="sample"></a> </div>
  </aside>
</header>
<!-- content -->
<section class="mainContent"> 
  <!-- Contact details -->
  <section class="section1">
    <h2 class="sectionTitle">contact DETAILS</h2>
    <hr class="sectionTitleRule">
    <hr class="sectionTitleRule2">
    <div class="section1Content">
      <p><span>Email :</span> shahbaz275817@yahoo.com</p>
      <p><span>Website :</span> shahbaz275817.tk</p>
      <p><span>Phone :</span> +91-9479711997</p>
      <p><span>Address :</span> Lucknow, India</p>
    </div>
  </section>
  <!-- Previous experience details -->
  <section class="section2">
    <h2 class="sectionTitle">project info</h2>
    <hr class="sectionTitleRule">
    <hr class="sectionTitleRule2">
    <!-- First Title & company details  -->
    <article class="section2Content">
      <h2 class="sectionContentTitle">BACKEND TECHNOLOGIES USED</h2>
      <p class="sectionContent"> Java EE Web Component APIs: Servlet 3.1 and JSP</p>
      <p class="sectionContent">Java EE Resource APIs: JDBC 4.0 </p>
      <p class="sectionContent">Frameworks: Spring 4.1 (Java)</p>
      <p class="sectionContent"> ORM Framework: Hibernate 4.3 </p>
      <p class="sectionContent">Build Tool: Maven .</p>
      <p class="sectionContent">Database : MySQL </p>
      <p class="sectionContent">Application Container and Web server: Apache Tomcat</p>
    </article>
    <!-- Second Title & company details  -->
    <article class="section2Content">
      <h2 class="sectionContentTitle"> Front End Technologies:</h2>
		<h3 class="sectionContentSubTitle"><b>Design and site template credits: Subhan Ul Haque</b> </h3>
      <p class="sectionContent">HTML-CSS</p>
      <p class="sectionContent">BootStrap</p>
      <p class="sectionContent">JavaScript</p>
      <p class="sectionContent">JQuery</p>
      <p class="sectionContent">AJAX </p>
    </article>
    <!-- Replicate the above Div block to add more title and company details --> 
  </section>
  <!-- Links to expore your past projects and download your CV --></section>
<footer>
  <hr>
  <p class="footerDisclaimer">2017 Copyrights - <span>All Rights Reserved</span></p>
  <p class="footerNote">Shahbaz Khan - <span>Email me</span></p>
</footer>
</div>
</body>
</html>
