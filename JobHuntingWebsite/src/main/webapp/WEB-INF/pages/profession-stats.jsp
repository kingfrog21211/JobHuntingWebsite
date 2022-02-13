<%-- 
    Document   : profession-stats
    Created on : Feb 4, 2022, 10:46:45 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <h1 class="text-center text-danger">Candidate Statistics By Professions</h1>
        <br>
        <br>
        <hr>
        <!--<div>
            <canvas id="myCateStatsChart"></canvas>
        </div>-->
        <div class="row">
            <div class="col">
                <canvas id="myCateStatsChart"></canvas>
            </div>
            <div class="col">
                <h3 class="text-center "><span class="badge badge-success">Stats table</span></h3>
                <table class="table">
                    <tr>
                        <th><span class="badge badge-info">PROFESSION ID</span></th>
                        <th><span class="badge badge-info">PROFESSION NAME</span></th>
                        <th><span class="badge badge-info">CANDIDATES</span></th>
                    </tr>
                    <c:forEach items="${professionStats}" var="p">
                        <tr>
                            <td>${p[0]}</td>
                            <td>${p[1]}</td>
                            <td>${p[2]}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            
        </div>
        
        <script>
            let cateLabels=[], cateInfo=[];

            <c:forEach items="${professionStats}" var="c">
                cateLabels.push('${c[1]}')
                cateInfo.push(${c[2]})
            </c:forEach>


            window.onload = function() {
                cateChart("myCateStatsChart", cateLabels, cateInfo)
            }
        </script>

