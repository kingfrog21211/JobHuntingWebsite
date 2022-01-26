<%-- 
    Document   : addRecruitJob
    Created on : Jan 16, 2022, 5:38:46 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:url value="/recruit-addRecruitJob" var="action"/>

<section class="job_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2 class="title"><strong>ADD NEW RECRUIT JOB</strong></h2>
        </div>
    </div>
    <div style="margin-left:20%; margin-right:20%">
    <form:form autocomplete="on" method="post" action="${action}" modelAttribute="recruitJob" enctype="multipart/form-data">
        <!--Recruit ID-->
        <div class="form-group" style="margin-left: 25%; margin-right: 25%">
            <label for="company" style="color: red; font-weight: 700">YOUR COMPANY NAME</label>
            <form:select id="company" path="recruitId" cssClass="form-control">
                <c:forEach items="${companies}" var="c">
                    <form:option value="${c.recruitId}">${c.companyName}</form:option>
                </c:forEach>
            </form:select>
        </div>
        <!--title-->
        <div class="form-group">
            <label for="title">Job Title</label>
            <form:input type="text" id="title" path="title" cssClass="form-control"/>
            <form:errors path="title" cssClass="text-danger" element="div"/>
        </div>
        <div class="form-group" style="column-count: 2">
            <!--position-->
            <div>
                <label for="position">Position</label>
                <form:input type="text" id="position" path="position" cssClass="form-control"/>
                <form:errors path="position" cssClass="text-danger" element="div"/>
            </div>
            <!--amount-->
            <div>
                <label for="amount">Amount</label>
                <form:input type="number" id="amount" path="amount" cssClass="form-control"/>
                <form:errors path="amount" cssClass="text-danger" element="div"/>
            </div>
        </div>
        <div class="form-group" style="column-count: 2">
            <!--description-->
            <div class="form-group">
                <label for="description">Job Description</label>
                <form:textarea id="description" path="description" cssClass="form-control"/>
                <form:errors path="description" cssClass="text-danger" element="div"/>
            </div>
            <!--require-->
            <div class="form-group">
                <label for="require">Job Requirement</label>
                <form:textarea id="require" path="require" cssClass="form-control"/>
                <form:errors path="require" cssClass="text-danger" element="div"/>
            </div>
        </div>
        <div class="form-group" style="column-count: 2">
            <!--benefit-->
            <div class="form-group">
                <label for="benefit">Benefit</label>
                <form:input type="text" id="benefit" path="benefit" cssClass="form-control"/>
            </div>
            <!--salary-->
            <div class="form-group">
            <label for="salary">Salary</label>
            <form:select id="salary" path="salaryId" cssClass="form-control">
                <c:forEach items="${salary}" var="s">
                    <option value="${s.salaryId}">${s.salaryValue}</option>
                </c:forEach>
            </form:select>
            </div>
        </div>
        <div class="form-group" style="column-count: 3">
            <!--experience-->
            <div class="form-group">
                <label for="ex">Experience</label>
                <form:select id="ex" path="experienceId" cssClass="form-control">
                    <c:forEach items="${experiences}" var="e">
                        <option value="${e.experienceId}">${e.experienceValue}</option>
                    </c:forEach>
                </form:select>
            </div>
            <!--work type-->
            <div class="form-group">
                <label for="w">Work type</label>
                <form:select id="w" path="workTypeId" cssClass="form-control">
                    <c:forEach items="${workTypes}" var="e">
                        <option value="${e.workTypeId}">${e.workTypeName}</option>
                    </c:forEach>
                </form:select>
            </div>
            <!--profession-->
            <div class="form-group">
                <label for="pro">Profession</label>
                <form:select id="pro" path="professionId" cssClass="form-control">
                    <c:forEach items="${professions}" var="e">
                        <option value="${e.professionId}">${e.professionName}</option>
                    </c:forEach>
                </form:select>
            </div>
        </div>
        <div class="form-group" style="column-count: 3">
            <!--email-->
            <div class="form-group">
                <label for="emailContact">Email Contact</label>
                <form:input type="text" id="emailContact" path="emailContact" cssClass="form-control"/>
                <form:errors path="emailContact" cssClass="text-danger" element="div"/>
            </div>
            <!--name contact-->
            <div class="form-group">
                <label for="nameContact">Name Contact</label>
                <form:input type="text" id="nameContact" path="nameContact" cssClass="form-control"/>
            </div>
            <!--phone-->
            <div class="form-group">
                <label for="phoneContact">Phone Contact</label>
                <form:input type="text" id="phoneContact" path="phoneContact" cssClass="form-control"/>
                <form:errors path="phoneContact" cssClass="text-danger" element="div"/>
            </div>
        </div>  
        <div class="form-group" style="column-count: 3">
            <!--city-->
            <div class="form-group">
                <label for="cityId">City</label>
                <form:select id="cityId" path="cityId" cssClass="form-control">
                    <c:forEach items="${cities}" var="e">
                        <option value="${e.cityId}">${e.cityName}</option>
                    </c:forEach>
                </form:select>
            </div>
            <!--place-->
            <div class="form-group">
                <label for="workPlace">Work Place</label>
                <form:input type="text" id="workPlace" path="workPlace" cssClass="form-control"/>
                <form:errors path="workPlace" cssClass="text-danger" element="div"/>
            </div>
            <!--expiration date-->
            <div class="form-group">
                <label for="expirationDate">Expiration Date</label>
                <form:input type="date" id="expirationDate" path="expirationDate" cssClass="form-control"/>
                <form:errors path="expirationDate" cssClass="text-danger" element="div"/>
            </div>
            
            <div class="form-group">
                <label for="postDate">Post Date</label>
                <form:input type="date" id="postDate" path="postDate" cssClass="form-control"/>
                <form:errors path="postDate" cssClass="text-danger" element="div"/>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" value="Add Recruit Job" class="btn" style="background-color: #ff9f01; display: table; clear: both; margin-left: 85%">
        </div>
    </form:form></div>
    <c:if test="${errMsg!=null}">
        <div class="alert alert-danger">${errMsg}</div>
    </c:if>
</section>