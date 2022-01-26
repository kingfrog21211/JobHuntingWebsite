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

<!--title-->
<h1>QUARTER-2022 STATISTIC</h1>

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
