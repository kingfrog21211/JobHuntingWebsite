<%-- 
    Document   : admin-header
    Created on : Feb 4, 2022, 11:20:38 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    <nav class="navbar navbar-expand navbar-light navbar-bg">
        <a class="sidebar-toggle js-sidebar-toggle">
            <i class="hamburger align-self-center"></i>
        </a>
        <div class="navbar-collapse collapse">
            <ul class="navbar-nav navbar-align">
                <li class="nav-item dropdown">
                    <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                        <i class="align-middle" data-feather="settings"></i>
                    </a>
                    <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                        <span class="text-dark">${pageContext.request.userPrincipal.name}</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" style="">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <a class="dropdown-item" href="<c:url value="/"/>" style="text-align: center;"><i class="align-middle me-1" data-feather="user"></i> Home page</a>
                            <div class="dropdown-divider"></div>
                            <a href="<c:url value="/logout"/>" class="dropdown-item" style="text-align: center; display: block; color: red; text-decoration-line: none ">Log out</a>
                        </c:if>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
