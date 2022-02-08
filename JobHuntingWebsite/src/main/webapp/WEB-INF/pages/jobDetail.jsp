<%-- 
    Document   : jobDetail
    Created on : Jan 17, 2022, 10:29:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

    <c:if test="${addCvMsg != null}">
        <div id="toast">
            <h3 class="toast_title">THÔNG BÁO!</h3>
            <div class="toast_message">${addCvMsg}</div>
        </div>
        <div class="text text-center text-danger">
            <h3>THÔNG BÁO!</h3>
            <div>${addCvMsg}</div>
        </div>
    </c:if>
<div class="container">
    <div style="padding-left: 15px; padding-top: 15px; position: relative">
        <h1 class="job-details__title" style="color: #ff9f01"><strong>${jobDetails[7]}</strong></h1>
        <div class="job-details__sub-title" style="font-weight: bold; font-size: 25px"><strong>${jobDetails[1]}</strong></div><br>
        
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
            <br>
        <!--button apply-->   
        <security:authorize access="hasRole('ROLE_CANDIDATE')">
        <div class="job-details__apply">
            <div class="btn-box" >
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <button onclick="location.href='<c:url value="/login"/>'">Apply Now</button>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <button onclick="addCV(${jobDetails[6]})">
                        Apply Now
                    </button>
                </c:if>
            </div>
        </div>
        </security:authorize>
        <!--end button apply-->
    </div>
</div>
            <br><br>