<%-- 
    Document   : videos1.jsp
    Created on : Sep 23, 2017, 6:09:27 PM
    Author     : Shahbaz
--%>


<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<html>
<body>
<h2>Welcome to Spring MVC - Hibernate Integrated Project test page</h2>
<a href="feedback.htm">feedback</a><br>
<a href="addquestion.htm">add questions</a><br>
<a href="getfeedbacks.htm">view all feedbacks</a><br>
<a href="getquestions.htm">view all questions</a><br>
<a href="test.htm">give a sample test</a>
</body>
</html>-->
<html>
    <head>
        <title>Playlist</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato">

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
            
            .outer{
                background: url('resources/images/bg3.jpg');
                background-size: cover;
                background-position: center center;
            }
            .outer .main{
                padding: 30px 30px 0px 30px;
                text-align: center;
            }
            
            .outer .main .video{
                border-radius: 2px;
                border: 1px solid #999;
                box-shadow: 0px 10px 15px -8px rgba(0, 0, 0, 0.5);
                margin: 10px 5% 0px 5%;
            }
            .outer .main .title{
                font-family: "Lato";
                font-weight: 800;
                font-size: 4.5vh;
                margin: 30px 35px 0px 35px;
                color: #ecf0f1;
                display: block;
                background: #2c3e50;
                border-radius: 5px 5px 0px 0px;
                padding: 5px 0px 5px 0px;
                text-shadow: 0px 4px 5px rgba(0, 0, 0, 0.6);
                border: 1.5px solid #0a1c30;
                border-bottom: none;
            }
            .outer .main .description{
                font-size: 1.1em;
                margin: 0px 35px 50px 35px;
                font-family: "Open Sans";
                color: #2c3e50;
                background: #bdc3c7;
                padding: 15px 10px 15px 10px;
                border-radius: 0px 0px 5px 5px;
                box-shadow: 0px 10px 15px -8px rgba(0, 0, 0, 0.5);
                border: 1.5px solid #2c3e50;
                border-top: none;
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
        
        <div class="container-fluid outer">
            <div class="row">
                <div class="main col-xs-12 col-sm-8 col-sm-offset-2">
                    <div class="embed-responsive embed-responsive-16by9 video">
                            <%= request.getAttribute("url") %>                    
                    </div>
                    <div class="title"><%= request.getAttribute("lang") %></div>
                    <div class="description"><%=request.getAttribute("info") %>.</div>
                </div>
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <script>
            $(document).ready(function(){
                $(window).resize(function(){
                    var mh = parseFloat($(".main").height());
                    var oh = parseFloat($(".outer").height());
                    if(mh > oh){
                        $(".outer").css("height", mh+30);
                    } 
                });
            });
        </script>
    </body>
</html>