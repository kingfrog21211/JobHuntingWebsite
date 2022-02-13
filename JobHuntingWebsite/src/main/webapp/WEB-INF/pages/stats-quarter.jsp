<%-- 
    Document   : stats-quarter
    Created on : Jan 26, 2022, 3:38:45 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<h1 class="text-center text-danger">QUARTER STATISTIC - <span style="text-transform: uppercase">${q}</span></h1>
<br>
<br>
<hr>
<div class="row">
    <div class="col">
        <canvas id="myStatsChart"></canvas>
    </div>
    <div class="col">
        <h3 class="text-center "><span class="badge badge-success">Stats table</span></h3>
        <table class="table">
            <tr>
                <th><span class="badge badge-info">PROFESSION ID</span></th>
                <th><span class="badge badge-info">PROFESSION NAME</span></th>
                <th><span class="badge badge-info">CANDIDATES</span></th>
            </tr>
            <c:forEach items="${stats}" var="p">
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
    function myChart(id, quarterLabels=[], quarterInfo=[]){
        const data = {
            labels: quarterLabels,
            datasets: [{
                label: 'Quarter statistic',
                backgroundColor: 'rgb(255, 99, 132)',
                borderColor: 'rgb(255, 99, 132)',
                data: quarterInfo
            }]
        };

        const config = {
          type: 'line',
          data: data,
          options: {}
        };

        let ctx = document.getElementById(id).getContext('2d')
        new Chart(ctx,config)
    }
</script>

<script>
    let quarterLabels=[], quarterInfo=[];
    <c:forEach items="${stats}" var="c">
        quarterLabels.push('${c[1]}')
        quarterInfo.push(${c[2]})
    </c:forEach>

    window.onload = function(){
        myChart('myStatsChart', quarterLabels, quarterInfo)
    }
</script>
