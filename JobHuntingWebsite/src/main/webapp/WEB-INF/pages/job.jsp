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
                    <span>15000+ Job Available For you</span>
                </h2>
            </div>

            <c:if test="${recruitJobs.size()==0}">
                <div class="text text-center text-danger">
                    There are not any available job know!!!
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
                                        <a target="_blank" href="">
                                            <picture>
                                            </picture>
                                        </a>
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
                                                <a href="" style="color: #000000"> Company Name </a>
                                            </h4>

                                            <!-- salary -->
                                            <div class="svg-icon svg-icon--rounded svg-icon--green">
                                                <box-icon name='dollar-circle' color='#ff9f01' ></box-icon>
                                                <c:if test="${rj.salaryId == null}">
                                                    <div class="svg-icon__text">Wage agreement</div>
                                                </c:if>
                                                <c:if test="${rj.salaryId != null}">
                                                            <div class="svg-icon__text">${rj.salaryId}</div>
                                                </c:if>
                                            </div>

                                            <!-- city -->
                                            <div class="">
                                                <div class="city">${rj.cityId}</div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- update time -->
                                    <div class="job-bottom">
                                        <div class="tag-list">
                                            <span>Post date: ${rj.postDate}</span> &emsp;
                                            <span>Expiration Date: ${rj.ngayHetHan}</span>
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