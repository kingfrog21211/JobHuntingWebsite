<%-- 
    Document   : base
    Created on : Dec 18, 2021, 9:46:57 AM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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
            <link href="css/main.css" rel="stylesheet" />
            <!-- responsive style -->
            <link href="css/responsive.css" rel="stylesheet" />
            <link href='css/search-result.css' rel='stylesheet'>
            <script src="js/jquery-3.4.1.min.js"></script>
            <script src="js/bootstrap.js"></script>
            <script src="js/main.js"></script>
            <script src="https://unpkg.com/boxicons@2.1.1/dist/boxicons.js"></script>
            <link href="css/job-detail.min.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
            
            <title>
                <tiles:insertAttribute name="title"/>
            </title>
    </head>
    <body>
            <!-- HEADER -->
            <tiles:insertAttribute name="header" />
            <!-- CONTENT -->
            <tiles:insertAttribute name="content"/>
            <!-- FOOTER -->
            <tiles:insertAttribute name="footer"/>
    </body>
</html>