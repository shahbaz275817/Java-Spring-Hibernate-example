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
        <title>Home</title>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
        <!-- Insert to your webpage before the </head> -->
        <script src="resources/js/jquery.js"></script>
        <script src="resources/js/amazingslider.js"></script>
        <link rel="resources/stylesheet" type="text/css" href="js/amazingslider-1.css">
        <script src="resources/js/initslider-1.js"></script>
       
        <!-- End of head section HTML codes -->
        
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
                background: #bdc3c7;
            }
            .outer .left, .outer .right{
                height: 100%;
            }
            .outer .left{
                background: url('resources/images/bgi.jpg');
                background-size: cover;
                background-position: center center;
                
            }
            .outer .right form{
                margin: 40px 10px;
                text-align: center;
                font-family: "Lato";
            }
            .outer .right form input[type=text], input[type=password] {
                border-radius: 5px;
                width: 80%;
                padding: 12px 15px;
                margin: 5px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }
            .outer .right form button{
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
            .outer .right .reg{
                margin-top: -20px;
                text-align: center;
                font-family: "Open Sans";
            }
            .outer .right .reg .btn{
                background: #2980b9;
            }
            .outer .right .con{
                margin-top: 20px;
                text-align: center;
                font-family: "Open Sans";
                position: absolute;
                bottom: 80px;
                left: 50%;
                transform: translate(-50%);
                bottom: 65px;
            }
			
            .outer .right .con .contact, .reg .btn{
                border-radius: 5px;
                background-color: #e74c3c;
                color: white;
                padding: 8px 15px;
                margin: 5px 0;
                border: none;
                cursor: pointer;
                font-size: 18px;
                width: 140px;
            }
            .outer .right .con .contact a, .reg .btn a{
                text-decoration: none;
                color: white;
                display: inline-block;
                width: 126%;
                transform: translateX(-10%);
            }
            .outer .right .con label, .reg label{
                font-size: 15px;
            }
            
            .outer .right #user-details {
                margin-top: 20px;
                color: white;
                font-family: "Open Sans";
                text-align: center;
            }
            .outer .right #user-details #wel{
                display: block;
                height: 40px;
                font-size: 2em;
                font-family: monospace;
                line-height: 40px;
                margin-bottom: 10px;
                color: #ecf0f1;
                text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.5);
            }
            .outer .right #user-details .list .title{
                height: 30px;
                line-height: 30px;
                font-weight: bold;
                font-size: 1.1em;
                text-transform: uppercase;
                font-family: "Lato";
                background: #2980b9;
                color: #ecf0f1;
                border-radius: 5px 5px 0px 0px;
            }
            .outer .right #user-details .list .data{
                display: block;
                margin-top: -10px;
                margin-bottom: 12px;
                font-family: "Verdana";
                font-size: 1.2em;
                height: 35px;
                line-height: 35px;
                background: #3498db;
                color: #ecf0f1;
                border-radius: 0px 0px 5px 5px;
            }
            .outer .right #user-details .list{
                overflow: hidden;
            }
            .outer .right #user-details .list a{
                background: red;
                display: block;
                height: 35px;
                text-decoration: none;
                color: white;
                font-size: 1.1em;
                line-height: 31px;
                border: 2px solid #c0392b;
                background: #e74c3c;
                border-radius: 5px;
            }
            .outer .right #user-details .list a:hover{
                background: #c42a1a;
            }
            
            #login-failed{
                color: red;
                font-family: "Open Sans";
                font-weight: 520;
            }
            #slider{
                margin-top:40px;
                
                
            }
            .outer #welcome{
                font-family: "Tangarine";
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
                <div class="left col-xs-12 col-sm-8">
                    <div class="content">
                        <h2 id="welcome">Welcome to Spring MVC - Hibernate Integrated Project test page</h2>
                        <div id="slider">
                            <!-- Insert to your webpage where you want to display the slider -->
                            <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:100%;padding-left:0px; padding-right:250px;margin:0px auto 0px;">
                                <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
                                    <ul class="amazingslider-slides" style="display:none;">
                                        <li><img src="resources/images/java-9-800x370.jpg" alt="Java 9 Released Finally!"  title="Java 9 Released Finally!" data-description="Oracle finally released Java 9 SE on 21st September 2017 after a delay of about a year" />
                                        </li>
                                        <li><img src="resources/images/lg__news_showtime_darknet.jpg" alt="Dark Net"  title="Dark Net" data-description="Is the Dark Net really as big as assumed?" />
                                        </li>
                                        <li><img src="resources/images/lg__news_showtme_darknet.jpg" alt="AlphaBay offline"  title="AlphaBay offline" data-description="The most famous illegal e-commerce website servers are down!!!" />
                                        </li>
                                        <li><img src="resources/images/Screen-Shot-2016-09-19-at-12.14.59-AM.png" alt="Java EE Roadmap"  title="Java EE Roadmap" data-description="Future of Java Enterprise Edition!" data-texteffect="Bottom bar" />
                                        </li>
                                        <li><a href="http://localhost:8090/spring-mvc-test//about.htm"><img src="resources/images/aboutus.jpg" alt="About Us"  title="About Us" data-description="Know who we are and info about this site" /></a>
                                        </li>
                                    </ul>
                                    <ul class="amazingslider-thumbnails" style="display:none;">
                                        <li><img src="resources/images/java-9-800x370-tn.jpg" alt="Java 9 Released Finally!" title="Java 9 Released Finally!" /></li>
                                        <li><img src="resources/images/lg__news_showtime_darknet-tn.jpg" alt="Dark Net" title="Dark Net" /></li>
                                        <li><img src="resources/images/lg__news_showtme_darknet-tn.jpg" alt="AlphaBay offline" title="AlphaBay offline" /></li>
                                        <li><img src="resources/images/Screen-Shot-2016-09-19-at-12.14.59-AM-tn.png" alt="Java EE Roadmap" title="Java EE Roadmap" /></li>
                                        <li><img src="resources/images/aboutus-tn.jpg" alt="About Us" title="About Us" /></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End of body section HTML codes -->
                        </div>
                    </div>
                    
                </div>

                <div class="right col-xs-12 col-sm-4">
                    <div class="user">
                        <form id ="log-in" action="login" method="post">
                            <input type="text" placeholder="Enter Username" name="username" required><br>
                            <input type="password" placeholder="Enter Password" name="password" required><br>
                            <button type="submit">Login</button>
                        </form>
                        <div class="reg">
                            <label id="login-failed">Incorrect Username and password combination<br><br></label>
                            <label>Not a member? Register here!</label><br>
                            <label class="btn"><a href="register.htm">Register</a></label>
                        </div>
                    </div>
                    <div id="user-details">
                        <span id="wel">Welcome</span>
                        <!---Logged in?: ${loggedin} <br>--->
                        
                        
                        <div class="list">
                            <p class="title">Name</p>
                            <span class="data">${session.getAttribute("name")}</span>
                        </div>
                        
                        <div class="list">
                            <p class="title">Username</p>
                            <span class="data">${session.getAttribute("username")}</span>
                        </div>
                        
                        <div class="list">
                            <p class="title">E-Mail</p>
                            <span class="data">${session.getAttribute("email")}</span>
                        </div>
                        
                        <div class="list">
                            <p class="title">Phone</p>
                            <span class="data">${session.getAttribute("phone")}</span>
                        </div>
                        
                        <div class="list">
                            <a href="logout">Log out</a>
                        </div>
                    </div>
                    <div class="chat">
                        <div class="con">
                            <label>Want to chat?</label><br>
                            <label class="contact"><a href="feedback.htm">Contact Us</a></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
<!--        <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        -->
        <script>
            $(document).ready(function() {
                var status=<%= session.getAttribute("loggedin") %>;
                //var status=document.getElementById("user-details"),loggedin;
                //loggedin=status.getAttribute("loggedin");
                console.log(status);
                if(status==true){
                    $('#user-details').show();
                    $('.user').hide();
                    $('#login-failed').hide();
                }
                else if(status==false){
                    $('#user-details').hide();
                    $('.user').show();
                    $('#login-failed').show();
                }
                else{
                    $('#user-details').hide();
                    $('.user').show();
                    $('#login-failed').hide();
                }
                
//                        $('#submit').click(function(e){
//                                e.preventDefault();
//                                $.ajax({
//                                    //$('#log-in').serialize();
//                                    url : 'login',
//                                    contentType: "text/html",
//                                    type : 'POST',
//                                    complete: function(response) {
//                                        $('.user').hide();
//                                        $('#user-details').show();
//                            }
//                        });
//                        return false;
//                        });
            });
        </script>
    </body>
</html>