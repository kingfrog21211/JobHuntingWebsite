<%-- 
    Document   : stats-quarter
    Created on : Jan 25, 2022, 9:07:58 PM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <script src="js/bootstrap.js"></script>
        <!--chart-->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <title>ADMIN - STATISTICS</title>
    </head>
    <body>
        <h1 class = "text-center text-info">ADMIN - STATISTICS</h1>
        <div class="hero_area" style="margin-left: 20px; margin-right: 20px">
            <div style="margin: 20px auto 0; display: grid; grid-template-columns: 300px 1fr">
                <div class="">
                    <!-- HEADER -->
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width: 250px">STATISTICS BY QUARTER 
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li>
                                <c:url value="/admin/stats-quarter" var="action">
                                    <c:param name="q" value="q1"/>
                                </c:url>
                                <a href="${action}" target="_blank">Q1 - 2022</a>
                            </li>
                            <li>
                                <c:url value="/admin/stats-quarter" var="action">
                                    <c:param name="q" value="q2"/>
                                </c:url>
                                <a href="${action}" target="_blank">Q2 - 2022</a>
                            </li>
                            <li>
                                <c:url value="/admin/stats-quarter" var="action">
                                    <c:param name="q" value="q3"/>
                                </c:url>
                                <a href="${action}" target="_blank">Q3 - 2022</a>
                            </li>
                            <li>
                                <c:url value="/admin/stats-quarter" var="action">
                                    <c:param name="q" value="q4"/>
                                </c:url>
                                <a href="${action}" target="_blank">Q4 - 2022</a>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width: 250px">STATISTICS BY YEAR 
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li>
                                <c:url value="/admin/stats-year" var="action">
                                    <c:param name="year" value="2019"/>
                                </c:url>
                                <a href="${action}" target="_blank">2019</a>
                            </li>
                            <li>
                                <c:url value="/admin/stats-year" var="action">
                                    <c:param name="year" value="2020"/>
                                </c:url>
                                <a href="${action}" target="_blank">2020</a>
                                
                            </li>
                            <li>
                                <c:url value="/admin/stats-year" var="action">
                                    <c:param name="year" value="2021"/>
                                </c:url>
                                <a href="${action}" target="_blank">2021</a>
                            </li>
                            <li>
                                <c:url value="/admin/stats-year" var="action">
                                    <c:param name="year" value="2022"/>
                                </c:url>
                                <a href="${action}" target="_blank">2022</a>
                            </li>
                        </ul>
                    </div>
                </div>
                            
                <noscript>
                    <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
                </noscript>
                <div class="">
                    <iframe name="iframe_content" src="" title="statistic" style="width: 100%; height: 650px"> </iframe>
                </div>
            </div>
        </div>
        
        <footer class="container-fluid footer_section">
            <p>&copy; 2022 All Rights Reserved By
                <a href="<c:url value="/"/>">JOB HUNTING</a>
            </p>
        </footer>
    </body>
</html>
