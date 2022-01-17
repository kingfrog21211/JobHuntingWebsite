<%-- 
    Document   : job
    Created on : Dec 20, 2021, 1:09:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <!-- job section -->
    <section class="job_section layout_padding" style="margin-left: 50px; margin-right: 50px">
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
                
            <noscript>
                <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
            </noscript>
            
            <div style="margin: 20px auto 0; display: grid; grid-template-columns: 600px 1fr; background-color: #fff" id="search-results">
                
                <div class="tab-content" id="myTabContent" style="background: white; border-right: 1px solid #e9e9e9; overflow: scroll;position: sticky;top: 60px;height: calc(100vh - 60px);">
                <div class="job_board tab-pane fade show active" id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                    <c:forEach items="${recruitJobs}" var="rj">
                        <div class="job" style="background-color: #ff9f01; border-radius: 20px">
                            <div class="job_content">
                                <!-- logo -->
                                <div class="logo">
                                    <div class="logo-wrapper" data-controller="tooltip" title="" data-bs-original-title="">
                                        
                                        <c:if test="${rj[4]!=null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[0]}"/>">
                                                <param name="recruitId" value="${rj[0]}"/>
                                                <img src="${rj[4]}" alt="${rj[5]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[5]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                        <c:if test="${rj[4] == null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[0]}"/>">
                                                <param name="recruitId" value="${rj[0]}"/>
                                                <img src="https://res.cloudinary.com/tcme212/image/upload/v1642397265/icon_eif3gg.png" alt="${rj[5]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[5]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                        
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- logo -->

                                <!-- job description -->
                                <div class="job__description">
                                    <!-- job title -->
                                    <div class="job__body">
                                        <div class="details">
                                            <!-- job -->
                                            <h3 class="title">
                                                <a href=""><b>${rj[1]}</b></a>
                                            </h3>
                                            <!-- company -->
                                            <h4>
                                                <a href="<c:url value="/company/${rj[0]}"/>" style="color: #000000"> ${rj[5]} </a>
                                            </h4>
                                            <!-- salary -->
                                            <div class="svg-icon svg-icon--rounded">
                                                <box-icon name='dollar-circle' color='green' ></box-icon>
                                                <div class="svg-icon__text" color='green'>${rj[6]}</div>        
                                            </div>
                                            <!-- city -->
                                            <div class="">
                                                <div class="city">${rj[7]}</div>
                                            </div>
                                        </div>
                                    </div>
                                            
                                    <!-- update time -->
                                    <div class="job-bottom">
                                        <div class="tag-list">
                                            <span>Post date: ${rj[2]}</span> &emsp;
                                            <span>Expiration Date: ${rj[3]}</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- job description -->
                            </div>
                        </div>
                        <br>
                    </c:forEach>
                </div>
            </div>
               
                <div style="position: relative; margin-right: 20%">
                    <div style="padding: 0 10px;">
                        
                    </div>
                </div>
            </div>
                
        </div>
    </section>
  <!-- end job section -->