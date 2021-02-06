# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.draw_graph = -> 
    ctx = document.getElementById("weekChart").getContext('2d')
    weekChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
            datasets: [{
                data: gon.data,
                backgroundColor: [
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(100, 100, 100, 0.2)',
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(153, 102, 255, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 159, 64, 1)',
                    'rgba(100, 100, 100, 1)',
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(153, 102, 255, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                      beginAtZero:true,
                    }
                }]
            },
            legend: {
              display: false
            },
            title: {
              display: true,
              text: '今週'
            }
        }
    })
    
    ctx = document.getElementById("monthChart").getContext('2d')
    monthChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["1~5", "6~10", "11~15", "16~20", "21~25", "25~"],
            datasets: [{
                data: [12, 19, 3, 5, 2, 3],
                borderColor: 'rgba(54, 162, 235, 1)',
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            },
            legend: {
              display: false
            },          
            title: {
              display: true,
              text: '今月'
            }          
        }
    })    
    
$(document).on "turbolinks:load", ->
    if document.getElementById("weekChart")
        draw_graph()