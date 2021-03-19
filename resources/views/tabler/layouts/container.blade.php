
  <body class="antialiased">
    <div class="page">
    @include('tabler.partials.sidebar')
    <div class="content">
        <div class="container-xl">
          <div class="content-header">
            <section class="content-header breadcrumbs-top">
                <h1 class=" float-left">
                    <span class="text-capitalize">{{ $page->title }}</span>
                    <small>{!! $page->description !!}</small>
                </h1>
            </section>
          </div>

          <div class="content-body" id="app">
            @include('tabler.partials.alerts')

            {!! $page->html() !!}

            @include('tabler.partials.toastr')
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
    <!-- Tabler Core -->
    <script src="/dist/js/tabler.min.js"></script>
    <script>
		</script>
  </body>
</html>