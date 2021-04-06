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
    <title>News hub</title>
    <!-- CSS files -->
    <link href="./dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="./dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body class="antialiased">
        <nav>
     @include('tabler.frontend.layouts.sidebar') 
     </nav>
      <div class="content">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">
                <h2 class="page-title">
                  News
                </h2>
              </div>
            </div>
          </div>
    <section class ="news">
    @foreach($Articles as $article)
          <div class="row">
            <div class="col-lg-8">
              <div class="card">
                <div class="list-group card-list-group">
                  <div class="list-group-item">
                    <div class="row g-2 align-items-center">
                      <div class="col-auto text-h3">
                      <img src= "{{$article->urlToImage}}"   width="300" height="100">
                      </div>
                      <div class="col-auto">
                      <h6 style="font-size: 10px">{{$article->title}}</h6>
                      Date
                      Published: {{$article->publishedAt}}</div>
                      <a href="{{$article->url}}">
                        Read More ...
                      </a>
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
          </div>
        </div>
        @endforeach
   
        </section> 
      </div>
    </div>
    <!-- Libs JS -->
    <!-- Tabler Core -->
    <script src="./dist/js/tabler.min.js"></script>
  </body>
</html>