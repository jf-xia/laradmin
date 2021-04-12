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
    <title>Laradmin News</title>
    <!-- CSS files -->
    <link href="./dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="./dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body class="antialiased">
    <div class="page">
    @include('tabler.partials.header')  
      <div class="content">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">
                <h2 class="page-title">
                  News Hub
                </h2>
              </div>
            </div>
          </div>

          <div class="row row-cards">
            <div class="col-md-6">
              <div class="card mb-3">
                <div class="card-header">
                  <h3 class="card-title">Latest news around the world</h3>
                </div>
                <div class="card-body">
                  <div class="row g-3">
                  @foreach($Articles as $article) 
                    <div class="col-6">
                      <div class="row g-3 align-items-center">
                        <a href="#" class="col-auto">
                          <span class="avatar"><img src= "{{$article->urlToImage}}" ></img>
                          </span>
                        </a>
                        <div class="col text-truncate">
                          <a href="{{$article->url}}" class="text-body d-block text-truncate">{{$article->title}}</a>
                          <small class="text-muted text-truncate mt-n1">Published Date: {{$article->publishedAt}}</small>
                        </div>
                      </div>
                    </div>
                    @endforeach
                  
                  </div>
                </div>
              </div>
            
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Business Insider news</h3>
                </div>
                @foreach($insiders as $insider) 
                <div class="list-group list-group-flush">
                  <div class="list-group-item">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <a href="{{$insider->url}}">
                          <span class="avatar"><img src= "{{$insider->urlToImage}}" ></img></span>
                        </a>
                      </div>
                      <div class="col text-truncate">
                        <a href="{{$insider->url}}" class="text-body d-block"><h5>{{$insider->title}}</h5></a>
                        <small class="d-block text-muted text-truncate mt-n1">Published Date: {{$insider->publishedAt}}</small>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
            <div class="col-md-6">
              <div class="card mb-3">
                <div class="card-header">
                  <h3 class="card-title">Lastest technology</h3>
                </div>
                @foreach($techs as $tech) 
                <div class="list-group list-group-flush list-group-hoverable">
                  <div class="list-group-item">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <a href="{{$tech->url}}">
                          <span class="avatar"><img src="{{$tech->urlToImage}}"></span>
                        </a>
                      </div>
                      <div class="col text-truncate">
                        <a href="#" class="text-body d-block">{{$tech->title}}</a>
                        <small class="d-block text-muted text-truncate mt-n1">{{$tech->description}}</small>
                        <a href="{{$tech->url}}"><small class="d-block text-muted text-truncate mt-n1">Read More..</small></a>
                      </div>
                      <div class="col-auto">
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>

              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Latest Business</h3>
                </div>
                @foreach($businesses as $business) 
                <div class="list-group list-group-flush list-group-hoverable">
                  <div class="list-group-item">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <a href="{{$business->url}}">
                          <span class="avatar"><img src="{{$business->urlToImage}}"></span>
                        </a>
                      </div>
                      <div class="col text-truncate">
                        <a href="#" class="text-body d-block">{{$business->title}}</a>
                        <small class="d-block text-muted text-truncate mt-n1">{{$business->description}}</small>
                        <a href="{{$business->url}}"><small class="d-block text-muted text-truncate mt-n1">Read More..</small></a>
                      </div>
                      <div class="col-auto">
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer class="footer footer-transparent d-print-none">
          <div class="container">
            <div class="row text-center align-items-center flex-row-reverse">
              <div class="col-lg-auto ms-lg-auto">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item"><a href="./docs/index.html" class="link-secondary">Documentation</a></li>
                  <li class="list-inline-item"><a href="./license.html" class="link-secondary">License</a></li>
                  <li class="list-inline-item"><a href="https://github.com/tabler/tabler" target="_blank" class="link-secondary" rel="noopener">Source code</a></li>
                </ul>
              </div>
              <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                <ul class="list-inline list-inline-dots mb-0">
                  <li class="list-inline-item">
                    Copyright &copy; 2021
                    <a href="." class="link-secondary">Tabler</a>.
                    All rights reserved.
                  </li>
                  <li class="list-inline-item">
                    <a href="./changelog.html" class="link-secondary" rel="noopener">v1.0.0-beta</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- Libs JS -->
    <!-- Tabler Core -->
    <script src="./dist/js/tabler.min.js"></script>
  </body>
</html>