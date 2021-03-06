<!DOCTYPE html>
{{--
* Tabler - Premium and Open Source dashboard template with responsive and high quality UI.
* @version 1.0.0-beta
* @link https://tabler.io
* Copyright 2018-2021 The Tabler Authors
* Copyright 2018-2021 codecalm.net Paweł Kuna
* Licensed under MIT (https://github.com/tabler/tabler/blob/master/LICENSE)
--}}
<html xmlns="http://www.w3.org/1999/xhtml" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <title>{{ $page->title }}</title>
    <!-- CSS files -->
    <link href="/dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="/dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="/dist/css/demo.min.css" rel="stylesheet"/>
    <!-- Tabler Core -->
    <script src="/dist/js/jquery-3.5.1.min.js"></script>
    <script src="/dist/js/tabler.min.js"></script>
    <script src="/dist/libs/litepicker/dist/litepicker.js"></script>
</head>

<body class="antialiased">
  <div class="page">
  @include('tabler.partials.header')
  @include('tabler.partials.sidebar')
  <div class="content">
      <div class="container-xl">
        <div class="content-header">
          <section class="content-header breadcrumbs-top">
              <h2 class="float-left">
                  <span class="text-capitalize">{{ $page->title }}</span>
                  <small>{!! $page->description !!}</small>
              </h2>
          </section>
        </div>

        <div class="content-body" id="app">
          @include('tabler.partials.alerts')
          @yield("page")
        </div>
      </div>
      <footer class="footer footer-transparent d-print-none">
        <div class="container">
          <div class="row text-center align-items-center flex-row-reverse">
            <div class="col-lg-auto ms-lg-auto">
              <ul class="list-inline list-inline-dots mb-0">
                <!-- <li class="list-inline-item"><a href="./docs/index.html" class="link-secondary">Documentation</a></li>
                <li class="list-inline-item"><a href="./license.html" class="link-secondary">License</a></li> -->
                <!-- <li class="list-inline-item"><a href="https://github.com/jf-xia/laradmin" target="_blank" class="link-secondary" rel="noopener">Source code</a></li> -->
              </ul>
            </div>
            <div class="col-12 col-lg-auto mt-3 mt-lg-0">
              <ul class="list-inline list-inline-dots mb-0">
                <li class="list-inline-item">
                  Copyright &copy; 2021
                  <a href="https://github.com/jf-xia/laradmin" class="link-secondary">Laradmin</a>.
                  All rights reserved.
                </li>
                <!-- <li class="list-inline-item">
                  <a href="./changelog.html" class="link-secondary" rel="noopener">v1.0.0-beta</a>
                </li> -->
              </ul>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  @include('tabler.partials.toastr')
</body>
</html>