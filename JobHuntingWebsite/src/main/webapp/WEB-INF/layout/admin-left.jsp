<%-- 
    Document   : admin-left
    Created on : Feb 4, 2022, 10:57:25 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="">
            <span class="align-middle">Admin</span>
        </a>

        <ul class="sidebar-nav">
            <li class="sidebar-header">Pages</li>

            <li class="sidebar-item active">
                <a class="sidebar-link" href="<c:url value="/admin/admin-base"/>">
                    <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>

            <li class="sidebar-header">Statistic</li>

            <li class="sidebar-item">
                <a class="sidebar-link nav-link dropdown-toggle d-none d-sm-inline-block" href="<c:url value="/admin/stats-year" />" data-bs-toggle="dropdown">
                    <i class="align-middle" data-feather=""></i> <span class="align-middle">Candidates - Year</span>
                </a>
                <div class="dropdown-menu dropdown-menu-end">
                    <c:url value="/admin/stats-year" var="y2019">
                        <c:param name="year" value="2019"/>
                    </c:url>
                    <a class="dropdown-item" href="${y2019}">2019</a>
                    
                    <c:url value="/admin/stats-year" var="y2020">
                        <c:param name="year" value="2020"/>
                    </c:url>
                    <a class="dropdown-item" href="${y2020}">2020</a>
                    
                    <c:url value="/admin/stats-year" var="y2021">
                        <c:param name="year" value="2021"/>
                    </c:url>
                    <a class="dropdown-item" href="${y2021}">2021</a>
                    
                    <c:url value="/admin/stats-year" var="y2022">
                        <c:param name="year" value="2022"/>
                    </c:url>
                    <a class="dropdown-item" href="${y2022}">2022</a>
                </div>
            </li>
            
            <li class="sidebar-item">
                <a class="sidebar-link nav-link dropdown-toggle d-none d-sm-inline-block" href="<c:url value="/admin/stats-year" />" data-bs-toggle="dropdown">
                    <i class="align-middle" data-feather=""></i> <span class="align-middle">Candidates - Quarter</span>
                </a>
                <div class="dropdown-menu dropdown-menu-end">
                    <c:url value="/admin/stats-quarter" var="q1">
                        <c:param name="q" value="q1"/>
                    </c:url>
                    <a class="dropdown-item" href="${q1}">Quarter 1</a>
                    
                    <c:url value="/admin/stats-quarter" var="q2">
                        <c:param name="q" value="q2"/>
                    </c:url>
                    <a class="dropdown-item" href="${q2}">Quarter 2</a>
                    
                    <c:url value="/admin/stats-quarter" var="q3">
                        <c:param name="q" value="q3"/>
                    </c:url>
                    <a class="dropdown-item" href="${q3}">Quarter 3</a>
                    
                    <c:url value="/admin/stats-quarter" var="q4">
                        <c:param name="q" value="q4"/>
                    </c:url>
                    <a class="dropdown-item" href="${q4}">Quarter 4</a>
                </div>
            </li>
            
            <li class="sidebar-item">
                <a class="sidebar-link" href="<c:url value="/admin/profession-stats" />">
                    <i class="align-middle" data-feather=""></i> <span class="align-middle">Candidates - Profession</span>
                </a>
            </li>
        </ul>
    </div>
</nav>

<!--<nav class="navbar bg-light">

   Links 
  <ul class="navbar-nav">
    
  </ul>

</nav>-->
