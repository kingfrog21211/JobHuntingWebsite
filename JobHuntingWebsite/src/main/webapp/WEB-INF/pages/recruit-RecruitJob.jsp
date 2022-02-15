<%-- 
    Document   : recruit-RecruitJob
    Created on : Jan 21, 2022, 4:30:09 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    #tb {
      font-family: Arial;
      border-collapse: collapse;
      width: 100%;
      font-size: small;
    }

    #tb td, #tb th {
      border: 1px solid #ddd;
      padding: 8px;
    }

    #tb tr:nth-child(even){background-color: #f2f2f2;}

    #tb tr:hover {background-color: #ddd;}

    #tb th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: royalblue;
      color: #000;
    }
</style>
<c:url value="/recruit/recruit-RecruitJob" var="action"/>
<!--error them that bai-->
<c:if test="${errMsg!=null}">
    <div class="alert-danger">${errMsg}</div>
</c:if>
<div style="margin-top: 70px; margin-left: 10px; margin-right: 10px">
    <!--<div class="container">-->
        <!--title-->
        <div class="heading_container">
            <h2 class="text-center"><strong>MANAGE RECRUIT JOB</strong></h2>
        </div>
        <div style="display: flex; flex-direction: column-reverse; overflow: scroll">
            <!--content-->            
            <c:if test="${recruitJob.size() == null}">
                <div class="alert alert-danger">
                    You haven't created any Recruit Job!!!
                </div>
            </c:if>
                <c:if test="${recruitJob.size() != null}">
                    <table id="tb">
                        <!--table header-->
                        <tr>
                            <th>Job ID</th>
                            <th>Job Title</th>
                            <th>Position</th>
                            <th>Amount</th>
                            <th>Description</th>
                            <th>Requirement</th>
                            <th>Work place</th>
                            <th>Benefit</th>
                            <th>Post date</th>
                            <th>Expiration date</th>
                            <th>Email contact</th>
                            <th>Name contact</th>
                            <th>Phone contact</th>
                            <th>Status</th>
                            <th>Salary</th>
                            <th>Experience</th>
                            <th>Recruit ID</th>
                            <th>City</th>
                            <th>Work type</th>
                            <th>Profession</th>
                            <th></th>
                        </tr>
                        <!--column value-->
                        <c:forEach items="${recruitJob}" var="c"> 
                            <tr>
                                <td>${c[6]}</td>
                                <td>${c[7]}</td>
                                <td>${c[8]}</td>
                                <td>${c[9]}</td>
                                <td>${c[11]}</td>
                                <td>${c[10]}</td>
                                <td>${c[12]}</td>
                                <td>${c[13]}</td>
                                <td>${c[14]}</td>
                                <td>${c[15]}</td>
                                <td>${c[16]}</td>
                                <td>${c[17]}</td>
                                <td>${c[18]}</td>
                                <td>${c[19]}</td>
                                <td>${c[2]}</td>
                                <td>${c[21]}</td>
                                <td>${c[20]}</td>
                                <td>${c[3]}</td>
                                <td>${c[4]}</td>
                                <td>${c[5]}</td>

                                <!--button modify, delete-->
                                <td>
                                    <c:url value="/recruit/recruit-updateRecruitJob" var="action">
                                        <c:param name="recruitJobId" value="${c[6]}"/>
                                    </c:url>
                                    <input type="button"
                                           value="Modify" 
                                           onclick="location.href='${action}'"
                                           style="background-color: limegreen; width: 80px; border-radius: 3px"/>
                                    <input type="button" 
                                           onclick="deleteRecruitJob(${c[6]})"
                                           value="Delete" 
                                           style="background-color: red; width: 80px; margin-top: 5px; ; border-radius: 3px"/>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
        </div><br>
        <!--button-->
        <button onclick="location.href='<c:url value="/recruit/recruit-addRecruitJob"/>'" style="background-color: royalblue; margin-right: 10% ">Add new Job</button>
        <br>
    <!--</div>-->
</div>