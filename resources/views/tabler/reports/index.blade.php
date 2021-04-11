<!doctype html>
<!--
* Tabler - Premium and Open Source dashboard template with responsive and high quality UI.
* @version 1.0.0-beta
* @link https://tabler.io
* Copyright 2018-2021 The Tabler Authors
* Copyright 2018-2021 codecalm.net Paweł Kuna
* Licensed under MIT (https://github.com/tabler/tabler/blob/master/LICENSE)
-->
<html lang="en">
@extends('tabler.layouts.container')
@section('page')
  <body class="antialiased">
    <div class="page">
      <div class="navbar-expand-md">
        
      <div class="content">
        <div class="container-xl">
    
          <div class="row row-deck row-cards">
            <div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="subheader">Total users created</div>
                    <div class="ms-auto lh-1">

                    </div>
                  </div>
                  <div class="h1 mb-3">{{$userCount}}</div>
                  <div class="d-flex mb-2">
                    <div><a href="{{ url('page/users')}}">See More</a></div>
                    <div class="ms-auto">
                    </div>
                  </div>
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-man" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <circle cx="12" cy="5" r="2" />
                        <path d="M10 22v-5l-1 -1v-4a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4l-1 1v5" />
                </svg>
                </div>
              </div>
            </div>
			<div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="subheader">Total tasks created</div>
                  </div>
                  <div class="h1 mb-3">{{$taskCount}}</div>
                  <div class="d-flex mb-2">
                    <div><a href="{{ url('page/tasks')}}">See More</a></div>
                    <div class="ms-auto">
                    </div>
                  </div>
				<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><rect x="4" y="5" width="16" height="16" rx="2" /><line x1="16" y1="3" x2="16" y2="7" /><line x1="8" y1="3" x2="8" y2="7" /><line x1="4" y1="11" x2="20" y2="11" /><rect x="8" y="15" width="2" height="2" /></svg>
                </div>
              </div>
            </div>
           
			<div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="subheader">Total Pages created</div>
                  </div>
                  <div class="h1 mb-3">{{$pageCount}}</div>
                  <div class="d-flex mb-2">
                    <div><a href="{{ url('page')}}">See More</a></div>
                    <div class="ms-auto">
                    </div>
                  </div>
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-man" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                        <circle cx="12" cy="5" r="2" />
                        <path d="M10 22v-5l-1 -1v-4a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4l-1 1v5" />
                </svg>
                </div>
              </div>
            </div>
			<div class="col-sm-6 col-lg-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div class="subheader">Total news sources connected</div>
                  </div>
                  <div class="h1 mb-3">{{$sourceCount}}</div>
                  <div class="d-flex mb-2">
                    <div><a href="{{ url('page/source')}}">See More</a></div>
                    <div class="ms-auto">
                    </div>
                  </div>
                 <!-- Download SVG icon from http://tabler-icons.io/i/clipboard-check -->
	<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M9 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-12a2 2 0 0 0 -2 -2h-2" /><rect x="9" y="3" width="6" height="4" rx="2" /><path d="M9 14l2 2l4 -4" /></svg>
                </div>
              </div>
            </div>

            <div class="col-lg-6">
              <div class="row row-cards">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <h3 class="card-title">New source category</h3>
                      <div id="chart-mentions" class="chart-lg"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="row row-cards">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <h3 class="card-title">Top 10 news source retrieved via API</h3>
                      <div id="chart" class="chart-lg"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        
           

    <!-- Libs JS -->
    <script src="./dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <!-- Tabler Core -->
    <script src="./dist/js/tabler.min.js"></script>
    
    <script  type="text/javascript">
      // @formatter:off

      var data = {!! json_encode($count) !!};
      var cateName = [];
      var cateTotal =[];
      for(var i = 0; i < data.length; i++) {
        var obj = data[i];

        console.log(obj.category);
        console.log(obj.total);
        cateName.push(obj.category)
        cateTotal.push(obj.total)
        }
      document.addEventListener("DOMContentLoaded", function () {
      	window.ApexCharts && (new ApexCharts(document.getElementById('chart-mentions'), {
      		chart: {
      			type: "bar",
      			fontFamily: 'inherit',
      			height: 240,
      			parentHeightOffset: 0,
      			toolbar: {
      				show: false,
      			},
      			animations: {
      				enabled: false
      			},
      			stacked: true,
      		},
      		plotOptions: {
      			bar: {
      				columnWidth: '50%',
      			}
      		},
      		dataLabels: {
      			enabled: false,
      		},
      		fill: {
      			opacity: 1,
      		},
      		series: [{
      			name: "Total",
      			data: cateTotal
      		}],
      		grid: {
      			padding: {
      				top: -20,
      				right: 0,
      				left: -4,
      				bottom: -4
      			},
      			strokeDashArray: 4,
      			xaxis: {
      				lines: {
      					show: true
      				}
      			},
      		},
      		xaxis: {
      			labels: {
      				padding: 0
      			},
      			tooltip: {
      				enabled: false
      			},
      			axisBorder: {
      				show: false,
      			},
      			type: 'string',
      		},
      		yaxis: {
      			labels: {
      				padding: 4
      			},
      		},
      		labels:cateName         
      		,
      		colors: ["#206bc4"],
      		legend: {
      			show: true,
      			position: 'bottom',
      			height: 32,
      			offsetY: 8,
      			markers: {
      				width: 8,
      				height: 8,
      				radius: 100,
      			},
      			itemMargin: {
      				horizontal: 8,
      			},
      		},
      	})).render();
      });
      // @formatter:on
    </script>
    
     <script  type="text/javascript">
      // @formatter:off

      var article = {!! json_encode($artcount) !!};
      console.log(article)
      var source = [];
      var sourceTotal =[];
      for(var i = 0; i < article.length; i++) {
        var obj = article[i];
        source.push(obj.source_id)
        sourceTotal.push(obj.total)
        }
      document.addEventListener("DOMContentLoaded", function () {
      	window.ApexCharts && (new ApexCharts(document.getElementById('chart'), {
      		chart: {
      			type: "bar",
      			fontFamily: 'inherit',
      			height: 240,
      			parentHeightOffset: 0,
      			toolbar: {
      				show: false,
      			},
      			animations: {
      				enabled: false
      			},
      			stacked: true,
      		},
      		plotOptions: {
      			bar: {
      				columnWidth: '50%',
      			}
      		},
      		dataLabels: {
      			enabled: false,
      		},
      		fill: {
      			opacity: 1,
      		},
      		series: [{
      			name: "Total",
      			data: sourceTotal
      		}],
      		grid: {
      			padding: {
      				top: -20,
      				right: 0,
      				left: -4,
      				bottom: -4
      			},
      			strokeDashArray: 4,
      			xaxis: {
      				lines: {
      					show: true
      				}
      			},
      		},
      		xaxis: {
      			labels: {
      				padding: 0
      			},
      			tooltip: {
      				enabled: false
      			},
      			axisBorder: {
      				show: false,
      			},
      			type: 'string',
      		},
      		yaxis: {
      			labels: {
      				padding: 4
      			},
      		},
      		labels:source         
      		,
      		colors: ["#47c420"],
      		legend: {
      			show: true,
      			position: 'bottom',
      			height: 32,
      			offsetY: 8,
      			markers: {
      				width: 8,
      				height: 8,
      				radius: 100,
      			},
      			itemMargin: {
      				horizontal: 8,
      			},
      		},
      	})).render();
      });
      // @formatter:on
    </script>
  </body>
  @endsection
</html>