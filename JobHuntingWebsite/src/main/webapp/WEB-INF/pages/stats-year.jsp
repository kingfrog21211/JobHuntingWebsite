<%-- 
    Document   : stats-year
    Created on : Jan 26, 2022, 7:53:25 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<h1 class="text-center text-danger">YEAR STATISTIC - ${year}</h1>
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
    function myChart(id, yearLabels=[], yearInfo=[]){
        const data = {
          labels: yearLabels,
          datasets: [{
            label: 'Year statistic',
            data: yearInfo,
            backgroundColor: [
              'rgba(255, 99, 132, 0.2)',
              'rgba(255, 159, 64, 0.2)',
              'rgba(255, 205, 86, 0.2)',
              'rgba(75, 192, 192, 0.2)',
              'rgba(54, 162, 235, 0.2)',
              'rgba(153, 102, 255, 0.2)',
              'rgba(201, 203, 207, 0.2)'
            ],
            borderColor: [
              'rgb(255, 99, 132)',
              'rgb(255, 159, 64)',
              'rgb(255, 205, 86)',
              'rgb(75, 192, 192)',
              'rgb(54, 162, 235)',
              'rgb(153, 102, 255)',
              'rgb(201, 203, 207)'
            ],
            borderWidth: 1
          }]
        };
        
        const config = {
            type: 'bar',
            data: data,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
              }
            }
          };
          
        let ctx = document.getElementById(id).getContext('2d')
        new Chart(ctx,config)
    }
</script>

<script>
    let yearLabels=[], yearInfo=[];
    <c:forEach items="${stats}" var="c">
        yearLabels.push('${c[1]}')
        yearInfo.push(${c[2]})
    </c:forEach>

    window.onload = function(){
        myChart('myStatsChart', yearLabels, yearInfo)
    }
</script>
