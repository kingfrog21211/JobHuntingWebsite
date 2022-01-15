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
                    <c:if test="${recruitJobs.size()!=1}"><span>${recruitJobs.size()} Jobs Available For you</span></c:if>
                    <c:if test="${recruitJobs.size()==0}"><span>0 Job Available now</span></c:if>
                </h2>
            </div>

            <c:if test="${recruitJobs.size()==0}">
                <div class="text text-center text-danger">
                    There are not any job that you want now, please come back later!!!
                </div>
            </c:if>
            
            <div class="tab-content" id="myTabContent">
                <div class="job_board tab-pane fade show active" id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                    <c:forEach items="${recruitJobs}" var="rj">
                        <div class="job">
                            <div class="job_content">
                                <!-- logo -->
                                <div class="logo">
                                    <div class="logo-wrapper" data-controller="tooltip" title="" data-bs-original-title="">
                                        <c:forEach items="${companies}" var="c">
                                            <c:if test="${c.recruitId == rj.recruitId}">
                                                <c:if test="${c.logo!=null}">
                                                    <a target="_blank" href="<c:url value="/company"/>">
                                                        <img src="${c.logo}" alt="${c.companyName}"/>
                                                    </a>
                                                </c:if>
                                                <c:if test="${c.logo == null}">
                                                    <img src="../../images/icon.png" alt="${c.companyName}"/>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
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
                                                <a href=""><b>${rj.title}</b></a>
                                            </h3>
                                            <!-- company -->
                                            <h4>
                                                <c:forEach items="${companies}" var="c">
                                                    <c:if test="${c.recruitId == rj.recruitId}">
                                                        <a href="" style="color: #000000"> ${c.companyName} </a>
                                                    </c:if>
                                                </c:forEach>
                                            </h4>
                                            <!-- salary -->
                                            <div class="svg-icon svg-icon--rounded">
                                                <box-icon name='dollar-circle' color='#ff9f01' ></box-icon>
                                                <c:if test="${rj.salaryId == null}">
                                                    <div class="svg-icon__text">Wage agreement</div>
                                                </c:if>
                                                <c:if test="${rj.salaryId != null}">
                                                    <c:forEach items="${salaries}" var="s">
                                                        <c:if test="${s.salaryId == rj.salaryId}">
                                                            <div class="svg-icon__text">${s.salaryValue}</div>
                                                        </c:if>
                                                    </c:forEach>
                                                </c:if>
                                            </div>
                                            <!-- city -->
                                            <div class="">
                                                <c:forEach items="${cities}" var="city">
                                                    <c:if test="${city.cityId == rj.cityId}">
                                                        <div class="city">${city.cityName}</div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                            
                                    <!-- update time -->
                                    <div class="job-bottom">
                                        <div class="tag-list">
                                            <span>Post date: ${rj.postDate}</span> &emsp;
                                            <span>Expiration Date: ${rj.expirationDate}</span>
                                        </div>
                                    </div>
                                </div>
                                <!-- job description -->
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
  <!-- end job section -->