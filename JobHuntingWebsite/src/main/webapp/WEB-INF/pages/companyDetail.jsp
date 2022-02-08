<%-- 
    Document   : companyDetail
    Created on : Jan 18, 2022, 8:41:40 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<section class="job_section" style="margin: 80px 100px 80px 150px; display: flex; flex-direction: row-reverse">
    <div class="container">
        <div style="border-color: #000; border-style: outset; border-width: 3px">
            <div style="background: linear-gradient(white,#ff9f01,white); display: grid; grid-template-columns: 270px 1fr;height: content-box" >
                <!--logo-->
                <div style="background-color: white;width: 250px;height: 250px; border-color: #ff9f01; border-style: outset; margin: 20px">
                    <c:if test="${companyDetails.logo != null && companyDetails.logo.startsWith('https')}">
                        <img style="max-width: 100%" src="${companyDetails.logo}" alt="${companyDetails.companyName}" title="${companyDetails.companyName}"/>
                    </c:if>
                    <c:if test="${companyDetails.logo == null || !companyDetails.startsWith('https')}">
                        <img style="max-width: 100%" src="https://res.cloudinary.com/tcme212/image/upload/v1642397265/icon_eif3gg.png" alt="${companyDetails.companyName}" title="${companyDetails.companyName}" style="height: 65px; width: 65px"/>
                    </c:if>
                </div>
                
                <!--info-->
                    <div style="margin: 20px 50px;width: 600px">
                        <div class="title" style=" font-size: 40px; font-weight: 700">${companyDetails.companyName}</div>
                        <div class="svg-icon__text">Since ${companyDetails.foundedYear}</div><br>
                        <div class="svg-icon">
                            <box-icon name='current-location' ></box-icon>
                            <div class="svg-icon__text">${companyDetails.address}</div>        
                        </div><br>
                        <div class="svg-icon__text"><strong>Website:</strong> ${companyDetails.website}</div><br>
                        <div class="svg-icon__text"><strong>Email:</strong> ${companyDetails.email}</div><br>
                        <p>${companyDetails.about}</p>
                    </div>
            </div>
        </div><br>
        
        <div style="text-align: center; text-decoration: #000; text-transform: uppercase; font-size: 25px">
            <c:url value="/job" var="action">
                <c:param name="recruitId" value="${companyDetails.recruitId}"/>
            </c:url>
            <a style="color: #000; font-weight: bold; " href="${action}">
                <i style="size: 50px" class='bx bxs-chevrons-right bx-tada bx-rotate-180' ></i>
                SEE RECRUIT JOB OF <span style="color: #ff9f01">${companyDetails.companyName}</span>
            </a>
        </div>
    </div>
</section>
<script>
    function gotoBottom(id){
       var element = document.getElementById(id);
       element.scrollTop = element.scrollHeight - element.clientHeight;
    }
</script>