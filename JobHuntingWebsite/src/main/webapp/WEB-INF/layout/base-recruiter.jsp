<%-- 
    Document   : base-recruiter
    Created on : Jan 28, 2022, 2:36:31 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/style-recruiter.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <!-- popup form -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
        <link rel="stylesheet" href="css/login-style.css">
        <link rel="stylesheet" href="css/login-demo.css">
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/main.js"></script>
        <script src="https://unpkg.com/boxicons@2.1.1/dist/boxicons.js"></script>

        <title>
            <tiles:insertAttribute name="title"/>
        </title>
    </head>
    <body>
        <div class="hero_area">
            <!-- HEADER -->
            <tiles:insertAttribute name="header"/>
        </div>
            <!-- CONTENT -->
            <tiles:insertAttribute name="content"/>

            <!-- FOOTER -->
            <tiles:insertAttribute name="footer"/>
    </body>
</html>

