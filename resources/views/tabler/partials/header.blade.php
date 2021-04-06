
<header class="navbar navbar-expand-md d-print-none navbar-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <h1 class="navbar-brand navbar-brand-autodark">
      <a href="/">
        <img src="/logo.png" width="110" height="32" alt="LarAdmin" class="navbar-brand-image">
      </a>
    </h1>
    <div class="navbar-nav flex-row order-md-last">
      <div class="nav-item dropdown">
        <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown" aria-label="Open user menu">
          <span class="avatar avatar-sm" style="background-image: url(/static/avatars/000m.jpg)"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
          <?php $user = \Auth::user(); ?>
          <div class="dropdown-item"><span >Hi, {{ $user->name }}</span></div>
          <div class="dropdown-divider"></div>
          @if($user->hasRole('admin'))
          <a href="{{ url('laratrust') }}" class="dropdown-item">RBAC Laratrust Panel</a>
          <a href="{{ route('page.index') }}" class="dropdown-item">Page Management</a>
          @endif
          <!-- <div class="dropdown-divider"></div> -->
          <!-- <a href="#" class="dropdown-item">Settings</a> -->
          <form id="logout" method="post" action="{{ route('logout') }}">
            @csrf
            <a href="javascript:document.getElementById('logout').submit();" class="dropdown-item">Logout</a>
          </form>
        </div>
      </div>
    </div>
  </div>
</header>

