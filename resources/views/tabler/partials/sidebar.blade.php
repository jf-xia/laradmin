
@role('admin')
<aside class="navbar-expand-md">
  <div class="collapse navbar-collapse" id="navbar-menu">
    <div class="navbar navbar-light" >
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
      <li class="nav-item {{ 'laratrust'==request()->path() ? 'active':'' }} ">
        <a class="nav-link" href="{{ url('laratrust') }}">
          <span class="nav-link-title">Role Management</span>
        </a>
      </li>
      <li class="nav-item {{ 'page'==request()->path() ? 'active':'' }} ">
        <a class="nav-link" href="{{ route('page.index') }}">
          <span class="nav-link-title">Page Management</span>
        </a>
      </li>
    </ul>
    </div>
  </div>
</aside>
@endrole