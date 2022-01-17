<%-- 
    Document   : jobDetail
    Created on : Jan 17, 2022, 10:29:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <!-- popup form -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
        <link rel="stylesheet" href="css/login-style.css">
        <link rel="stylesheet" href="css/login-demo.css">
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="https://unpkg.com/boxicons@2.1.1/dist/boxicons.js"></script>
    </head>
    <div style="padding-left: 15px; padding-top: 15px; position: relative">
        <h1 class="job-details__title" style="color: #ff9f01"><strong>${jobDetails[7]}</strong></h1>
        <div class="job-details__sub-title" style="font-weight: bold; font-size: 25px"><strong>${jobDetails[1]}</strong></div><br>
            <div class="job-details__apply">
                <div class="btn-box" >
                    <button style="font-size: 25px; background-color: #ff9f01;position: absolute;top: 80px;right: 30px;cursor: pointer; z-index: 2" target="_blank" href="">Apply Now</button>
                </div>
            </div>
            <div class="svg-icon svg-icon--rounded" style="">
                <box-icon name='dollar-circle'></box-icon>
                <div class="svg-icon__text">${jobDetails[2]}</div>        
            </div>
            <div class="svg-icon">
                <div class="svg-icon">
                    <box-icon name='current-location' ></box-icon>
                    <div class="svg-icon__text">${jobDetails[12]}</div>        
                </div>
            </div>
                <div class="job-bottom" style="margin-bottom: 20px">
                    <div class="tag-list">
                        <span>Post date: ${jobDetails[14]}</span> &emsp;
                        <span>Expiration Date: ${jobDetails[15]}</span>
                    </div>
                </div>
            <c:if test="${jobDetails[13]!=null}">
                <h2 class="job-details__second-title">Benefit</h2>
                <div class="job-details__top-reason-to-join-us" style="margin-bottom: 20px">${jobDetails[13]}</div>
            </c:if>
        <h2 class="job-details__second-title">Job Description</h2>
        <div class="job-details__paragraph" style="margin-bottom: 20px">
            ${jobDetails[11]}
        </div>
        <h2 class="job-details__second-title">Job Requirement</h2>
        <div class="job-details__paragraph" style="margin-bottom: 20px">
            ${jobDetails[10]}
        </div>
        <div class="job-bottom">
            <div class="tag-list">
                <span>Email: ${jobDetails[16]}</span><br>
                <c:if test="${jobDetails[17]!=null}">
                    <span>Name contact: ${jobDetails[17]}</span><br>
                </c:if>
                <span>Phone: ${jobDetails[18]}</span>
            </div>
        </div>
</div>
