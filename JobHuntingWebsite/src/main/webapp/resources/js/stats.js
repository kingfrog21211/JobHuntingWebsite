/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function generateColor() {
    let r = parseInt(Math.random()*255);
    let g = parseInt(Math.random()*255);
    let b = parseInt(Math.random()*255);
    return `rgb(${r}, ${g}, ${b})`
}

function cateChart(id, cateLabels=[], cateInfo=[]) {
    let colors = []
    for (let i = 0; i < cateInfo.length; i++)
        colors.push(generateColor())
    
    const data = {
        labels: cateLabels,
        datasets: [{
          label: 'Candidates Statistics By Profession',
          data: cateInfo,
          backgroundColor: colors,
          hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'doughnut',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}

function productChart(id, productLabels=[], productInfo=[]) {
    let colors = []
    for (let i = 0; i < productInfo.length; i++)
        colors.push(generateColor())
    
    const data = {
        labels: productLabels,
        datasets: [{
          label: 'Candidates Statistics By Profession',
          data: productInfo,
          backgroundColor: colors,
          borderColor: colors,
          hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'bar',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}


function productMonthChart(id, productLabels=[], productInfo=[]) {
    let colors = []
    for (let i = 0; i < productInfo.length; i++)
        colors.push(generateColor())
    
    const data = {
        labels: productLabels,
        datasets: [{
          label: 'Candidates Statistics By Profession',
          data: productInfo,
          backgroundColor: colors,
          borderColor: colors,
          hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'bar',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}

