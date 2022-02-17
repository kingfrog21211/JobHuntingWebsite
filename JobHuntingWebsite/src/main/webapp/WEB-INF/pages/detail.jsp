<%-- 
Document   : detail
Created on : Feb 2, 2022, 7:01:01 PM
Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<style>
    .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
        position: relative;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }
    #job-detail-page-wraper .box-info-job .box-info {
        background: #00b14f0d;
        border-radius: 3px;
        margin-bottom: 8px;
        padding: 16px 16px 0;
    }
    .box-info p {
        color: #333;
        font-weight: 700;
        margin-bottom: 16px;
        -webkit-text-decoration-line: underline;
        text-decoration-line: underline;
    }
    .box-main {
        display: grid;
        grid-columns: 50% 50%;
    }
    .box-item {
        display: flex;
        margin-bottom: 16px;
    }
    .box-item img {
        height: 32px;
        margin-right: 16px;
        width: 32px;
    }
</style>
<div class="container" style="min-width: 750px;
                            padding-left: 0;
                            padding-right: 0;
                            width: 96%;">
    <div class="box-white box-detail-job" style="align-items: center;
                                                border-radius: 3px;
                                                display: flex;
                                                padding: 16px;">
        <a class="company-logo" style="margin-right: 24px;">
            <div class="box-company-logo" style="align-items: center;
                                                border-radius: 75px;
                                                display: flex;
                                                height: 110px;
                                                overflow: hidden;
                                                width: 110px; ">
                <img src="https://res.cloudinary.com/tcme212/image/upload/v1642397265/icon_eif3gg.png" alt="${jobDetails[7]}" class="img-responsive" style="width: 50px">
            </div>
        </a>
        <div class="box-info-job">
            <h1 class="job-title text-highlight bold" style="overflow-wrap:break-word"> 
                <p style="font-weight: 900">${jobDetails[7]}</p></h1>
            <div class="company-title">
                <c:url value="/companyDetail" var="action">
                    <c:param name="recruitId" value="${jobDetails[20]}"/>
                </c:url>
                <a href="${action}" class="text-dark-blue">${jobDetails[1]}</a>
            </div>
            <div class="job-deadline">
                Ngày đăng: ${jobDetails[14]}
            </div>
            <div class="job-deadline">
                Hạn nộp hồ sơ: ${jobDetails[15]}
            </div>
        </div>
        <security:authorize access="hasRole('ROLE_CANDIDATE')">
            <div class="apply-area" style="margin-left: 50px">
                <div class="text-center">
                    <button style="background-color: royalblue" onclick="apply(jobDetails[6])">
                            APPLY NOW
                    </button>
                    <button style="background-color: limegreen; margin-left: 20px" onclick="">
                        <i class="fas fa-heart"></i> SAVE
                    </button>
                </div>
            </div>
        </security:authorize>
        <security:authorize access="!isAuthenticated()">
            <div class="apply-area" style="margin-left: 50px"><a href="<c:url value="/login"/>">
                    <b style="text-decoration: red; color: red "><i class="fas fa-arrow-right"></i> Login to apply for this job</b></a></div>
        </security:authorize>
    </div>
</div>
<div class="container " id="tab-info" style="min-width: 750px;padding-left: 0;padding-right: 0; width: 96%;">
    <div class="box-info-job box-white" style="border-radius: 3px;padding: 16px;word-break: break-word;background-color: #fff">
        
        <div class="row" style="margin-right: -15px;margin-left: -15px;">
            <div class="col-md-8">
                <div class="box-info">
                    <b><u>JOB DETAIL</u></b><br><br>
                <div class="box-main">
                    <div class="box-item">
                        <img src="https://www.topcv.vn/v4/image/job-detail/icon/1.svg" alt="">
                        <div>
                        <strong>Salary </strong> <br>
                        <span>
                        ${jobDetails[2]}
                        </span>
                        </div>
                    </div>
                    <div class="box-item">
                        <img src="https://www.topcv.vn/v4/image/job-detail/icon/5.svg" alt="">
                        <div>
                        <strong>Recruit Amount </strong> <br>
                        <span>${jobDetails[9]}</span>
                        </div>
                    </div>
                    <div class="box-item">
                        <img src="https://www.topcv.vn/v4/image/job-detail/icon/6.svg" alt="">
                        <div>
                            <strong>Work Type </strong> <br>
                            <span>${jobDetails[4]}</span>
                        </div>
                    </div>
                    <div class="box-item">
                        <img src="https://www.topcv.vn/v4/image/job-detail/icon/7.svg" alt="">
                        <div>
                            <strong>Experience </strong> <br>
                            <span>${jobDetails[21]}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-address">
                <b>Work place</b>
                <div>
                    <div class="text-dark-gray">${jobDetails[12]}</div>
                    <div class="text-dark-gray" style="margin-bottom: 10px;">

                    </div>
                </div>
            </div>
            <div class="job-data">
                <h3 style="font-weight: bold">Description</h3>
                <div class="content-tab"><p>${jobDetails[11]}</p></div>
                <h3 style="font-weight: bold">Requirement</h3>
                <div class="content-tab"><p>${jobDetails[10]}</p></div>
                <h3 style="font-weight: bold">Benefit</h3>
                <div class="content-tab"><p>${jobDetails[13]}</p></div>
                
            </div>
        </div>
            <div class="col-md-4 col-box-right">
                <div class="box-keyword-job">
                    <h3>Profession</h3>
                    <div class="keyword">
                        <c:forEach items="${professions}" var="c">
                            <c:url value="/job" var="action">
                                <c:param name="professionId" value="${c.professionId}"/>
                            </c:url>
                            <span>
                                <a href="${action}" class="btn btn-sm btn-default text-dark-gray" target="_blank" style="background-color: #fafafa; font-weight: normal; border-color: #dfdfdf; margin-top: 5px;">${c.professionName}</a>
                            </span>
                        </c:forEach>
                    </div>
                    <br>
                    <h3>City</h3>
                    <div class="area">
                        <c:forEach items="${cities}" var="c">
                            <c:url value="/job" var="action">
                                <c:param name="cityId" value="${c.cityId}"/>
                            </c:url>
                            <span>
                                <a class="btn btn-sm btn-default text-dark-gray" style="background-color: #fafafa; font-weight: normal; border-color: #dfdfdf; margin-top: 5px;" href="${action}" target="_blank">
                                    ${c.cityName}
                                </a>
                            </span>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
