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

<!--title-->
<h1>YEAR STATISTIC</h1>

<!--chart-->
<div style="margin-left: 100px; margin-right: 100px; margin-top: 20px; margin-bottom: 10px">
  <canvas id="myStatsChart"></canvas>
</div>

<!--data-->
<table class="table">
    <tr>
        <th>Profession Id</th>
        <th>Profession Name</th>
        <th>Candidate Amount</th>
    </tr>
    <c:forEach items="${stats}" var="c">
        <tr>
            <td>${c[0]}</td>
            <td>${c[1]}</td>
            <td>${c[2]}</td>
        </tr>
    </c:forEach>
</table>
        
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
