<%-- 
    Document   : profession
    Created on : Jan 15, 2022, 5:50:42 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="job_section layout_padding-bottom">
    <div class="container">
        <br><br>
        <div class="heading_container">
            <h2>Recommended jobs <br>
                <c:if test="${recruitJobs.size()==1}"><span>1 Job Available For you</span></c:if>
                <c:if test="${recruitJobs.size()>1}"><span>${recruitJobs.size()} Jobs Available For you</span></c:if>
                <c:if test="${recruitJobs.size()==0}"><span>0 Job Available now</span></c:if>
            </h2>
        </div>

        <div class="tab-content" id="myTabContent">
            <div class="job_board tab-pane fade show active" id="jb-1" role="tabpanel" aria-labelledby="jb-1-tab">
                <div class="content-box">
                    <div class="content layout_padding2-top">
                        <!-- career -->
                        <c:forEach items="${professions}" var="c">
                            <c:url value="/job" var="action">
                                <c:param name="professionId" value="${c.professionId}"/>
                            </c:url>
                            <div class="box">
                                <h3>${c.professionName}</h3>
                                <a href="${action}">Find Job</a>
                            </div>
                        </c:forEach>
                        <!-- career -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
