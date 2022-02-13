<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!--role CANDIDATE or RECRUIT-->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <div class="hero_area">
    <!-- header section strats -->
        <header class="header_section">
          <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container">
                <a class="navbar-brand" href="<c:url value="/"/>">
                    <span>Job Hunting</span>
                </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                    <security:authorize access="!hasRole('ROLE_RECRUIT')">
                        <ul style="margin-right: 10px" class="navbar-nav">
                            <li class="nav-item active">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/"/>"> Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/job"/>"> Jobs </a>
                            </li>
                            <li class="nav-item">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/company"/>"/> Companies </a>
                            </li>

                            <c:url value="/job" var="action"/>
                            <form class="form-inline" action="${action}">
                                <input class="form-control mr-sm-2" style="margin-right: 4px; width: 500px" type="text" name="kw" placeholder="Search for Job Title or Company name...">
                                <button type="submit"><i class='bx bx-search'></i></button>
                            </form>
                        </ul>
                    </security:authorize>
                    
                    <security:authorize access="hasRole('ROLE_RECRUIT')">
                        <ul style="margin-right: 20px" class="navbar-nav">
                            <li class="nav-item active">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/"/>"> Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/recruit/recruit-RecruitJob"/>"> Manage Recruit Jobs </a>
                            </li>
                            <li class="nav-item">
                                <a style="margin-top: 10px" class="nav-link" href="<c:url value="/recruit/recruit-saveCandidate"/>"/> Save Candidate </a>
                            </li>
                        </ul>
                    </security:authorize>

                    <!--login logout...-->
                    <ul class="user_option navbar-nav" style="margin-right: 30px; font-weight: 700">
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li class="nav-item">
                                <a href="<c:url value="/login" />" class="nav-link text-danger">
                                    <span class="glyphicon glyphicon-log-in"></span> Login
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<c:url value="/register" />" class="nav-link text-danger">
                                    <i><span class="glyphicon glyphicon-user"></span></i> Register
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="nav-item dropdown show">
                                <security:authorize access="!hasRole('ROLE_ADMIN')">
                                    <a href="<c:url value="/userProfile" />" class="nav-link text-success">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        ${pageContext.request.userPrincipal.name}
                                    </a>
                                </security:authorize>
                                <security:authorize access="hasRole('ROLE_ADMIN')">
                                    <a href="<c:url value="/admin/admin-base" />" class="nav-link text-success">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        ${pageContext.request.userPrincipal.name}
                                    </a>
                                </security:authorize>
                            </li>
                            <li class="nav-item">
                                <a href="<c:url value="/logout" />" class="nav-link text-success">Logout</a>
                            </li>
                        </c:if>
                    </ul>

                </div>
              </div>
            </nav>
          </div>
        </header>
        <!-- end header section -->
    </div>

