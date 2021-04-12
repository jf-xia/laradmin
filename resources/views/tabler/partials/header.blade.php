<header class="navbar navbar-expand-md d-print-none navbar-dark">
    <a href="/">
        <img src="/logo.png" width="110" height="32" alt="LarAdmin" >
      </a> 
  <div class="container-xl">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="navbar-nav">
             <li class="nav-item">
                    <a class="nav-link" href="{{ url('page/users') }}" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="5 12 3 12 12 3 21 12 19 12" /><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" /><path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Home
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M14 3v4a1 1 0 0 0 1 1h4" /><path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" /><line x1="9" y1="9" x2="10" y2="9" /><line x1="9" y1="13" x2="15" y2="13" /><line x1="9" y1="17" x2="15" y2="17" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Market News
                      </span>
                    </a>
                  </li>
                  <?php $user = \Auth::user(); ?>
                  @if($user->hasRole('admin'))
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('report.index') }}" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M10 3.2a9 9 0 1 0 10.8 10.8a1 1 0 0 0 -1 -1h-6.8a2 2 0 0 1 -2 -2v-7a0.9 .9 0 0 0 -1 -.8" /><path d="M15 3.5a9 9 0 0 1 5.5 5.5h-4.5a1 1 0 0 1 -1 -1v-4.5" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Dashboard
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('page.index') }}" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><ellipse cx="12" cy="6" rx="8" ry="3"></ellipse><path d="M4 6v6a8 3 0 0 0 16 0v-6" /><path d="M4 12v6a8 3 0 0 0 16 0v-6" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Page Management
                      </span>
                    </a>
                  </li>
                  @endif
    </ul>
    <div class="navbar-nav flex-row order-md-last">
      <!-- <div class="nav-item dropdown d-none d-md-flex me-3">
        <a href="#" class="nav-link px-0" data-bs-toggle="dropdown" tabindex="-1" aria-label="Show notifications">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" /><path d="M9 17v1a3 3 0 0 0 6 0v-1" /></svg>
          <span class="badge bg-red"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-end dropdown-menu-card">
          <div class="card">
            <div class="card-body">
            </div>
          </div>
        </div>
      </div> -->
      <div class="nav-item dropdown">
        <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown" aria-label="Open user menu">
          <span class="avatar avatar-sm" style="background-image: url(/static/avatars/000m.jpg)"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
          <?php $user = \Auth::user(); ?>
          <div class="dropdown-item"><span >Hi, {{ $user->name }}</span></div>
          <div class="dropdown-divider"></div>
          <a herf="#!" class = "dropdown-item" data-bs-toggle="modal" data-bs-target="#modal-simple">Profile</a>
        
          @if($user->hasRole('admin'))
          <a href="{{ url('laratrust') }}" class="dropdown-item">RBAC Laratrust Panel</a>
          <a href="{{ route('page.index') }}" class="dropdown-item">Page Management</a>
          <a href="{{ route('report.index') }}" class="dropdown-item">Dashboard</a>
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
    <div class="collapse navbar-collapse" id="navbar-menu">
      <!-- <div>
        <form action="." method="get">
          <div class="input-icon">
            <span class="input-icon-addon">
              <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="10" cy="10" r="7" /><line x1="21" y1="21" x2="15" y2="15" /></svg>
            </span>
            <input type="text" class="form-control" placeholder="Search…" aria-label="Search in website">
          </div>
        </form>
      </div> -->
    </div>
  </div>
  <div class="modal modal-blur fade" id="modal-simple" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Profile</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <div class="form-group col">
                            <div class="row">
                                <label for="Name" class="col-sm-4 control-label"><b>Name :</b> <br> <span class="font-weight-bolder">{{auth::user()->name }}</span></br></label>
                            </div>
                            <div class="row">
                                <label for="Email" class="col-sm-4 control-label"><b>Email :</b> <br> <span class="font-weight-bolder">{{auth::user()->email }}</span></br></label>
                            </div>
                            <div class="row">
                                <label for="Created" class="col-sm-4 control-label"><b>Account Created at :</b> <br> <span class="font-weight-bolder">{{auth::user()->created_at }}</span></br></label>
                            </div>
                            <div class="row">
                                <label for="Role" class="col-sm-4 control-label"><b>Last Update :</b> <br> <span class="font-weight-bolder">{{auth::user()->updated_at }}</span></br></label>
                            </div>
          </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn me-auto" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>   


  

</header>