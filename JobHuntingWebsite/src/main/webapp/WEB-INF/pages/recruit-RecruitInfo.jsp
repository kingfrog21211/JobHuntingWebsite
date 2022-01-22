<%-- 
    Document   : recruit-RecruitInfo
    Created on : Jan 22, 2022, 11:55:27 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">  
    $(document).ready(function(e) {
        $.ajax({
            //Your ajax here...
            success: function(response) {
                //Your code of showing inserted data in table....
                //get the inserted userid from response and set update button's ONCLICK attribute as mentioned below
                var userid = getuseridfromresponse;
                $("#updatebuttonid").attr("onclick","updaterecord("+userid+")");
            }
        });
    });
    function updaterecord(userid){
        $.ajax({
            //your ajax here you
            //send all the details from php code using JSON or whatever you are using.
            success: function(response) {
                //store all the data into js variables.
                var userid = response.userid;
                var fullname = response.fullname;
                // and so on..
                $("#fullname").val(fullname); //this will set the textbox value to fullname
                //and so on..
                $("#userid").val(userid); //this is a hidden input in inser form. by default it will be zero. you will need it while updating.
                $("#actionname").val("update"); //this is also hidden input in insert form. default value would be "insert"
                // you just need to check in php that which actionname you are getting.

                //if you will get actionname = insert Do insert code
                //if you will get actionname = update Do update code.
            }
        });
    }
</script>
<!--<input type = "textbox" name="age" value="<?php echo $row['age'] ?>">-->
<section class="job_section layout_padding">
    <!--title-->
    <div class="container">
        <div class="heading_container">
            <h2 class="title"><strong>RECRUITER INFORMATION</strong></h2>
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
            
            <!--title-->
            <div class="form-group">
                <label for="title">Job Title</label>
                <form:input type="text" id="title" path="title" cssClass="form-control"/>
                <%--<form:errors path="title" cssClass="text-danger" element="div"/>--%>
            </div>
            <div class="form-group" style="column-count: 2">
                <!--position-->
                <div>
                    <label for="position">Position</label>
                    <form:input type="text" id="position" path="position" cssClass="form-control"/>
                    <%--<form:errors path="position" cssClass="text-danger" element="div"/>--%>
                </div>
                <!--amount-->
                <div>
                    <label for="amount">Amount</label>
                    <form:input type="number" id="amount" path="amount" cssClass="form-control"/>
                    <%--<form:errors path="amount" cssClass="text-danger" element="div"/>--%>
                </div>
            </div>
            <div class="form-group" style="column-count: 2">
                <!--description-->
                <div class="form-group">
                    <label for="description">Job Description</label>
                    <form:textarea id="description" path="description" cssClass="form-control"/>
                    <%--<form:errors path="description" cssClass="text-danger" element="div"/>--%>
                </div>
                <!--require-->
                <div class="form-group">
                    <label for="require">Job Requirement</label>
                    <form:textarea id="require" path="require" cssClass="form-control"/>
                    <%--<form:errors path="require" cssClass="text-danger" element="div"/>--%>
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
                        <form:option value="${s.salaryId}">${s.salaryValue}</form:option>
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
                            <form:option value="${e.experienceId}">${e.experienceValue}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
                <!--work type-->
                <div class="form-group">
                    <label for="w">Work type</label>
                    <form:select id="w" path="cityId" cssClass="form-control">
                        <c:forEach items="${workTypes}" var="e">
                            <form:option value="${e.workTypeId}">${e.workTypeName}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
                <!--profession-->
                <div class="form-group">
                    <label for="pro">Profession</label>
                    <form:select id="pro" path="professionId" cssClass="form-control">
                        <c:forEach items="${professions}" var="e">
                            <form:option value="${e.professionId}">${e.professionName}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <div class="form-group" style="column-count: 3">
                <!--email-->
                <div class="form-group">
                    <label for="emailContact">Email Contact</label>
                    <form:input type="text" id="emailContact" path="emailContact" cssClass="form-control"/>
                    <%--<form:errors path="emailContact" cssClass="text-danger" element="div"/>--%>
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
                    <%--<form:errors path="phoneContact" cssClass="text-danger" element="div"/>--%>
                </div>
            </div>  
            <div class="form-group" style="column-count: 3">
                
                <!--place-->
                <div class="form-group">
                    <label for="workPlace">Work Place</label>
                    <form:input type="text" id="workPlace" path="workPlace" cssClass="form-control"/>
                    <%--<form:errors path="workPlace" cssClass="text-danger" element="div"/>--%>
                </div>
                <!--expiration date-->
                <div class="form-group">
                    <label for="expirationDate">Expiration Date</label>
                    <form:input type="text" id="expirationDate" path="expirationDate" cssClass="form-control"/>
                    <%--<form:errors path="expirationDate" cssClass="text-danger" element="div"/>--%>
                </div>
            </div>
            <!--button submit-->
            <div class="form-group">
                <input type="submit" value="Update" class="btn" style="background-color: #ff9f01; display: table; clear: both; margin-left: 85%">
            </div>
        </form:form>
    </div>
</section>