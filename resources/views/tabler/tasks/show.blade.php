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
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Task details</title>
    <!-- CSS files -->
    <link href="/dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="/dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body class="antialiased">
  @include('tabler.partials.header')   
    <div class="page">
    
      <div class="content">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">
                <h2 class="page-title">
                  Task {{$task->id}}
                </h2>
              </div>
            </div>
          </div>
          <div class="row row-cards">
            <div class="col-12">
              <div class="card">
                <div class="table-responsive">
                  <table
		class="table table-vcenter card-table">
                    <thead>
                      <tr>
                        <th>id</th>
                        <th>Title</th>
                        <th>customer_id</th>
                        <th>Location</th>
                        <th>Start At</th>
                        <th>End At</th>
                        <th>Task Created At</th>
                        <th class="w-1"></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td >{{$task->id}}</td>
                        <td class="text-muted" >
                        {{$task->title}}
                        </td>
                        <td class="text-muted" ><a href="#" class="text-reset">{{$task->customer_id}}</a></td>
                        <td class="text-muted" >
                        {{$task->location}}
                        </td>
                        <td>
                        {{$task->start_at}}
                        </td>
                        <td>
                        {{$task->end_at}}
                        </td>
                        <td>
                        {{$task->created_at}}
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
           
    </div>
    <div class="col-12">
                  <div class="card">
                    <div class="row row-0">
                      <div class="col-3 order-md-last">
                        <img src="/stock.PNG" class="w-100 h-100 object-cover" alt="">
                      </div>
                      <div class="col">
                        <div class="card-body">
                           <h3 class="card-title"> Customer Name:
                             @foreach ($customer as $object)
                              {{ $object->name }}
                             @endforeach
                          </h3>
                          <br>
                          <b>Customer details:</b>
                          <h3>@foreach ($customer as $object)
                            {{ $object->details }}
                          @endforeach</h3>
                          <div class="col-12">
              <div class="card">
                <div class="table-responsive">
                  <table id="myTable"
		class="table table-vcenter card-table">
                    <thead>
                      <tr>
                        <th>Symbol</th>
                        <th>Trade Date</th>
                        <th>Exchange</th>
                        <th>Closing Price</th>
                        <th class="w-1"></th>
                      </tr>
                    </thead>
                    <tbody>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>


                        </div>
                      </div>
                    </div>
                  </div>
    </div>
    <div class="col-lg-6">
              <div class="card">
                <div class="card-body">
                  <div class="card-title">{{$task->location}}</div>
                  <div class="ratio ratio-16x9">
                    <div>
                      <div id="map" class="w-100 h-100"></div>
                    </div>
                  </div>
                </div>
              </div>
    </div>
</div>
    
    <!-- Libs JS -->
    <!-- Tabler Core -->
    
    <script  async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBilYanAx7OLAlCJ9I70UpDx0O6oOKuzAs&libraries=places&v=weekly&libraries=places" 
    ></script>

    <!-- Tabler Core -->
    <script src="/dist/js/tabler.min.js"></script>
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      let map;
      let service;
      let infowindow;

      document.addEventListener("DOMContentLoaded", function() { 
        const sydney = new google.maps.LatLng(-33.867, 151.195);
        infowindow = new google.maps.InfoWindow();
        map = new google.maps.Map(document.getElementById("map"), {
          center: sydney,
          zoom: 12,
        });
        const request = {
          query: "{{$task->location}}",
          fields: ["name", "geometry"],
        };
        service = new google.maps.places.PlacesService(map);
        service.findPlaceFromQuery(request, (results, status) => {
          if (status === google.maps.places.PlacesServiceStatus.OK && results) {
            for (let i = 0; i < results.length; i++) {
              createMarker(results[i]);
            }
            map.setCenter(results[0].geometry.location);
          }
        });
      })

      function createMarker(place) {
        if (!place.geometry || !place.geometry.location) return;
        const marker = new google.maps.Marker({
          map,
          position: place.geometry.location,
        });
        google.maps.event.addListener(marker, "click", () => {
          infowindow.setContent(place.name || "");
          infowindow.open(map);
        });
      }
    </script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
     <script>
       var result;

       var cs = {!! json_encode($customer) !!};
       var symbol = cs[0].symbol;
       
jQuery(document).ready(function (){
  jQuery.ajax({
  url: 'http://api.marketstack.com/v1/eod/latest',
  data: {
    access_key: 'e8262ac45e05e551ed49c604b4cfa77a',
    symbols : symbol
  },
  dataType: 'JSON',
  success: function(data) {
    
    var replacer = function(key, value) {
        return typeof value === 'undefined' ? null : value;
      }
    var parsed = JSON.parse(JSON.stringify(data, replacer));  
    
    console.log(parsed.data);

    
    
      var row = $('<tr><td class="text-muted">' + parsed.data[0].symbol+ '</td><td class="text-muted">' + parsed.data[0].date+ '</td><td class="text-muted">' + parsed.data[0].exchange + '</td><td class="text-muted">' + parsed.data[0].close+ '</td></tr>');
      $('#myTable').append(row);
       
  }
});
});
</script>
  </body>
</html>