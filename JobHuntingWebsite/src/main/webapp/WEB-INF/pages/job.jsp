<%-- 
    Document   : job
    Created on : Dec 20, 2021, 1:09:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <!-- job section -->
    <section class="job_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Recommended jobs <br>
                    <c:if test="${recruitJobs.size()==1}"><span>1 Job Available For you</span></c:if>
                    <c:if test="${recruitJobs.size()>1}"><span>${recruitJobs.size()} Jobs Available For you</span></c:if>
                    <c:if test="${recruitJobs.size()==0}"><span>0 Job Available now</span></c:if>
                </h2>
            </div>

            <c:if test="${recruitJobs.size()==0}">
                <div class="text text-center text-danger">
                    There are not any job that you want now, please come back later!!!
                </div>
            </c:if>
                
            <div id="search-results">
                <div class="tab-content" id="myTabContent" style="border-right: 1px; overflow: scroll; position: sticky; top: 60px; height: calc(100vh - 60px);">
                    <div class="list-job">
                        <div class="job-body row">
                            <div class="lists">
                                <c:forEach items="${recruitJobs}" var="rj">
                                    <div class="job-item  job-ta result-job-hover" data-job-id="595575" data-job-position="1" data-box="BoxSearchResult">
                                        <div class="avatar">
                                            <a target="_blank" href="https://www.topcv.vn/viec-lam/thuc-tap-sinh-kinh-doanh/595575.html?ta_source=JobSearchList" class="company-logo" rel="nooppener noreferrer">
                                                <img src="https://cdn.topcv.vn/80/company_logos/bt4aHjAUuUaPFunAcyJ3S9YtWgeoxHmw_1643255468____6e5c15c6d4ef07464482cfdc75fe2865.jpeg" class="w-100" alt="CÔNG TY TNHH CHUBB LIFE Việt Nam" title="Thực Tập Sinh Kinh Doanh">
                                            </a>
                                        </div>
                                        <div class="body">
                                            <div class="content">
                                                <div class="ml-auto">
                                                    <h3 class="title">
                                                        <c:url value="/jobDetail" var="action">
                                                            <c:param name="recruitJobId" value="${rj[6]}"/>
                                                        </c:url>
                                                        <a class="underline-box-job"  href="${action}">
                                                            <span class="bold transform-job-title" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="${rj[7]}">${rj[7]}</span>
                                                        </a>
                                                    </h3>
                                                    <p class="company underline-box-job">
                                                        <c:url value="/companyDetail" var="action">
                                                            <c:param name="recruitId" value="${rj[20]}"/>
                                                        </c:url>
                                                        <a href="${action}" data-toggle="tooltip" data-placement="top" data-container="body" rel="nooppener noreferrer" data-original-title="${rj[1]}">${rj[1]}</a>
                                                    </p>
                                                </div>
                                                <div class="d-flex">
                                                    <div class="label-content ml-auto" >
                                                        <a href="" class="badge badge-info">${rj[2]}</a>
                                                        <a href="" data-original-title="${rj[3]}" class="badge badge-info">${rj[3]}</a>
                                                        <a href="" class="badge badge-info">${rj[14]}</a>
                                                        <a href="" class="badge badge-info">${rj[15]}</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    </div>
                    
<!--                    <noscript>
                        <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
                    </noscript>
                    <div style="position: relative; background-color: transparent">
                        <div style="padding: 0 30px;">
                            <div style="word-break: break-word;">
                                <iframe name="iframe_jobDetail" src="" title="description" style="width: 600px; height: 700px; margin-top: 15px"> </iframe>
                            </div>
                        </div>
                    </div>-->
                
            </div>
        </div>
    </section>
  <!-- end job section -->