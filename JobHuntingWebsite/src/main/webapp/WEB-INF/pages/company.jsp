<%-- 
    Document   : company
    Created on : Jan 15, 2022, 4:53:34 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

<section class="job_section layout_padding-bottom" style=" margin-left: 50px">
    <div class="heading_container">
        <br><br>
        <div class="heading_container" style=" margin-right: 30px">
            <h2>Recommended companies <br>
                <c:if test="${companies.size()==1}"><span>1 Company here</span></c:if>
                <c:if test="${companies.size()>1}"><span>${companies.size()} Companies here</span></c:if>
            </h2>
        </div>

        <div class="container" id="myTabContent">
            <div class="list-job" id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                <div class="job-body row">
                    <div class="lists">
                        <!-- career -->
                        <c:forEach items="${companies}" var="c">
                            <c:url value="/companyDetail" var="action">
                                <c:param name="recruitId" value="${c.recruitId}"/>
                            </c:url>
                            <div class="job_content">
                                <h3 style="font-weight: 900; font-family: monospace">${c.companyName}</h3>
                                
                                <div class="ml-auto" style="align-items: center">
                                    <a class="badge badge-info" style=" background-color: grey">Address: ${c.address}</a><br>
                                    <a class="badge badge-info" style=" background-color: grey">Website: ${c.website}</a>
                                </div>
                                
                                <a href="${action}" style="font-size: medium; font-weight: bold; color: royalblue"><i class='bx bxs-chevrons-right bx-tada bx-rotate-180' ></i>See information</a>
                            </div>
                        </c:forEach>
                        <!-- career -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>