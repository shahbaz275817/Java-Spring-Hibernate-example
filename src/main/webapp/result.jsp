<%-- 
    Document   : result
    Created on : 13 May, 2017, 2:48:10 AM
    Author     : Shahbaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Result</title>
         <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans">
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
            
            .outer{
                height: calc(100vh);
                background: url('resources/images/bgi.jpg');
                background-size: cover;
                background-position: center center;
            }
            .outer .left{
                padding-top: 20px;
            }
            .outer .left .align{
                margin: 0 auto;
                text-align: center;
                width: 90%;
            }
            .outer .left .align h3{
                font-family: "Josefin Slab";
                font-size: 3em;
                text-transform: uppercase;
                padding: 5px 10px;
            }
            .outer .left .align h5{
                font-size: 1.8em;
                text-transform: uppercase;
                padding: 0px 10px;
            }
            .outer .left .align h6{
                font-size: 1.5em;
                font-weight: bold;
                margin: 25px 10px;
            }
            .outer .left .align p{
                font-size: 1.4em;
                margin: -10px 40px;
            }
            
            .outer .right{
                padding-top: 20px;
            }
            .outer .right form{
                margin: 20px 10px;
                text-align: center;
                font-family: "Lato";
            }
            .outer .right form input[type=text], input[type=email]{
                border-radius: 5px;
                width: 80%;
                padding: 10px 12px;
                margin: 5px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }
            .outer .right form .marea{
                border-radius: 5px;
                width: 80%;
                padding: 10px 12px;
                margin: 5px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
                height: 150px;
            }
            .outer .right form .sub{
                border-radius: 5px;
                background-color: #4CAF50;
                color: white;
                padding: 8px 15px;
                margin: 5px 0;
                border: none;
                cursor: pointer;
                font-size: 20px;
                width: 80%;
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
                    <center>
                        <h1>Your Test Result</h1>
                        <h4>Your score ${result}</h4>
                        <h4>Max Score = 5</h4>
                        <h4>Percentage: ${percentage}%</h4>
                    </center>
        </div>            
    </body>
</html>
