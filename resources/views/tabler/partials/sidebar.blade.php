
@role('admin')
<aside class="navbar-expand-md">
  <div class="collapse navbar-collapse" id="navbar-menu">
    <div class="navbar navbar-light" >
    <div class="container-xl">
    <ul class="navbar-nav">
    @foreach($page->pageCache() as $page)
      <li class="nav-item {{ $page->url==request()->path() ? 'active':'' }} ">
        <a class="nav-link" href="{{ url($page->url) }}">
          <span class="nav-link-title">
            {{ $page->title  }}
          </span>
        </a>
      </li>
    @endforeach
    </ul>
    </div>
    </div>
  </div>
</aside>
@endrole