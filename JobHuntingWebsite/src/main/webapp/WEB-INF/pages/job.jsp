<%-- 
    Document   : job
    Created on : Dec 20, 2021, 1:09:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<style>
    iframe:focus {
        outline: none;
    }
    iframe[seamless] {
        display: block;
    }
</style>
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
                
            <noscript>
                <iframe height='0' src='//www.googletagmanager.com/ns.html?id=GTM-5DSLL8' style='display:none;visibility:hidden' width='0'></iframe>
            </noscript>

            <div style="margin: 20px auto 0; display: grid; grid-template-columns: 500px 1fr" id="search-results">
                
                <div class="tab-content" id="myTabContent" style="border-right: 1px; overflow: scroll; position: sticky; top: 60px; height: calc(100vh - 60px);">
                    <div class="job_board tab-pane fade show active"  id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                    <c:forEach items="${recruitJobs}" var="rj">
                        
                        <div onclick="" class="job job--selected" style="background-color: #252525;" >
                            <div class="job_content" style="position: relative">
                                <span style="font-size: 25px;color:#ffffff;position: absolute;top: 20px;right: 20px;cursor: pointer; z-index: 2;">
                                    <i class='bx bx-heart' id="heart"></i>
                                </span>
                                <!-- logo -->
                                <div class="logo">
                                    <div class="logo-wrapper" data-controller="tooltip" title="" data-bs-original-title="">
                                        <c:if test="${rj[0]!=null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[6]}"/>">
                                                <param name="recruitId" value="${rj[6]}"/>
                                                <img src="${rj[0]}" alt="${rj[1]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[1]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                        <c:if test="${rj[0] == null}">
                                            <a target="_blank" href="<c:url value="/company/${rj[6]}"/>">
                                                <param name="recruitId" value="${rj[6]}"/>
                                                <img src="https://res.cloudinary.com/tcme212/image/upload/v1642397265/icon_eif3gg.png" alt="${rj[1]}" data-controller="lazyload" class=" ls-is-cached lazyloaded" title="${rj[1]}" style="height: 65px; width: 65px"/>
                                            </a>
                                        </c:if>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!-- job description -->
                                <div class="job__description">
                                    <!-- job title -->
                                    <div class="job__body">
                                        <div class="details">
                                            <!-- job -->
                                            <h3 class="title">
                                                <c:url value="/jobDetail" var="action">
                                                    <c:param name="recruitJobId" value="${rj[6]}"/>
                                                </c:url>
                                                <a href="${action}" target="iframe_jobDetail">
                                                    <strong style="color: #ff9f01">${rj[7]}</strong>
                                                </a>
                                            </h3>
                                            <!-- company -->
                                            <h4>
                                                <a href="<c:url value="/company/${rj[20]}"/>" style="color: #fff"> ${rj[1]} </a>
                                            </h4>
                                            <!-- salary -->
                                            <div class="svg-icon svg-icon--rounded">
                                                <box-icon name='dollar-circle' color='#6bf400' ></box-icon>
                                                <div class="svg-icon__text" style="color: #6bf400">${rj[2]}</div>        
                                            </div>
                                            <!-- city -->
                                            <div class="">
                                                <div class="city" style="color: #fff">${rj[3]}</div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- update time -->
                                    <div class="job-bottom">
                                        <div class="tag-list" style="color: #fff">
                                            <span>Post date: ${rj[14]}</span> &emsp;
                                            <span>Expiration Date: ${rj[15]}</span>
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
            
                <div style="position: relative; background-color: transparent">
                    <div style="padding: 0 30px;">
                        <div style="word-break: break-word;">
                            <iframe name="iframe_jobDetail" src="" title="description" style="width: 600px; height: 700px;"> </iframe>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
  <!-- end job section -->