<%-- 
    Document   : recruit-RecruitInfo
    Created on : Jan 22, 2022, 11:55:27 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="job_section layout_padding">
    <!--title-->
    <div class="container">
        <div class="heading_container">
            <h2 class="title"><strong>RECRUITER INFORMATION (COMPANY INFORMATION)</strong></h2>
        </div>
    </div>
    <!--form-->
    <div style="margin-left:20%; margin-right:20%">
        <form:form autocomplete="on" method="post" action="${action}" modelAttribute="recruitJob" enctype="multipart/form-data">
            <!--Recruit ID-->
            <div class="form-group" style="margin-left: 25%; margin-right: 25%">
                <label style="color: red; font-weight: 700">RECRUITER ID: </label>${companies.recruitId}<br>
                <label style="color: red; font-weight: 700">USER ID: </label>${companies.userId}
            </div>
            <!--city-->
            <div class="form-group">
                <label for="cityId">City</label>
                <form:select id="cityId" path="cityId" cssClass="form-control">
                    <c:forEach items="${cities}" var="e">
                        <form:option value="${e.cityId}">${e.cityName}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <!--address-->
            <!--email-->
            <!--Company name-->
            <!--about-->
            <!--logo-->
            <!--website-->
            <!--active-->
            <!--founded year-->
            
            <!--button submit-->
            <div class="form-group">
                <input type="submit" value="Update" class="btn" style="background-color: #ff9f01; display: table; clear: both; margin-left: 85%">
            </div>
        </form:form>
    </div>
</section>