<%-- 
    Document   : addRecruitJob
    Created on : Jan 16, 2022, 5:38:46 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/recruit-addRecruitJob" var="action"/>
<section class="job_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>MANAGE RECRUIT JOB</h2>
        </div>
    </div>
    <form:form method="post" action="${action}" modelAttribute="recruitJob" enctype="multipart/form-data" style="margin-top: 1.5%;margin-left: 3.5%">
        <div class="form-group">
            <label for="file">Logo</label>
            <form:input type="file" id="file" path="file" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Add Job" class="btn btn-info">
        </div>
    </form:form>
</section>