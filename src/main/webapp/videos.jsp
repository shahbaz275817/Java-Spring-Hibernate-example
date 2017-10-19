<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Videos</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Slab">
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
            
            .vid .row .col{
                height: 300px;
                font-family: "Josefin Slab";
                font-size: 4.8em;
            }
            .vid .row .col a{
                background: #D73C2C;
                width: 80%;
                height: 80%;
                text-decoration: none;
                color: white;
                display: inline-block;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                border-radius: 8px;
            }
            .vid .row .col span{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
            
            .vid{
                background: url('resources/images/bg3.jpg');
                background-size: cover;
                background-position: center center;
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
        
        <div class="container-fluid vid">
            <div class="row r1">
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=c"><span>C</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=java"><span>Java</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=csharp"><span>C#</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=php"><span>PHP</span></a>
                </div>
            </div>
            <div class="row r1">
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=js"><span>JS</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=jquery"><span>JQuery</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=cpp"><span>C++</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=html"><span>HTML</span></a>
                </div>
            </div>
            <div class="row r1">
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=css"><span>CSS</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=python"><span>Python</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=sql"><span>SQL</span></a>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-3 label">
                    <a href="${pageContext.request.contextPath}/play?lang=ajax"><span>Ajax</span></a>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>

</html>
