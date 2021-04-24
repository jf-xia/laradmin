<header class="navbar navbar-expand-md d-print-none navbar-dark">
  <div class="container-xl">
    <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-1">
      <a href="/">
        <img src="/logo.png" width="110" height="32" alt="LarAdmin" >
      </a> 
    </h1>
    <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="/" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M14 3v4a1 1 0 0 0 1 1h4" /><path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" /><line x1="9" y1="9" x2="10" y2="9" /><line x1="9" y1="13" x2="15" y2="13" /><line x1="9" y1="17" x2="15" y2="17" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Market News
                      </span>
                    </a>
                  </li>
                  <li class="nav-item {{ 'page/customer'==request()->path() ? 'active':'' }}">
                    <a class="nav-link" href="/page/customer" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="7" cy="5" r="2" /><path d="M5 22v-5l-1 -1v-4a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4l-1 1v5" /><circle cx="17" cy="5" r="2" /><path d="M15 22v-4h-2l2 -6a1 1 0 0 1 1 -1h2a1 1 0 0 1 1 1l2 6h-2v4" /></svg>
                      </span>
                      <span class="nav-link-title">
                        CRM
                      </span>
                    </a>
                  </li>
                  <?php $user = \Auth::user(); ?>
                  @if($user->hasRole('admin'))
                  <li class="nav-item {{ 'report'==request()->path() ? 'active':'' }}">
                    <a class="nav-link" href="{{ route('report.index') }}" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M10 3.2a9 9 0 1 0 10.8 10.8a1 1 0 0 0 -1 -1h-6.8a2 2 0 0 1 -2 -2v-7a0.9 .9 0 0 0 -1 -.8" /><path d="M15 3.5a9 9 0 0 1 5.5 5.5h-4.5a1 1 0 0 1 -1 -1v-4.5" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Dashboard
                      </span>
                    </a>
                  </li>
                  <li class="nav-item {{ 'page'==request()->path() ? 'active':'' }} ">
                    <a class="nav-link" href="{{ route('page.index') }}" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><ellipse cx="12" cy="6" rx="8" ry="3"></ellipse><path d="M4 6v6a8 3 0 0 0 16 0v-6" /><path d="M4 12v6a8 3 0 0 0 16 0v-6" /></svg>
                      </span>
                      <span class="nav-link-title">
                        Page Management
                      </span>
                    </a>
                  </li>
                  <li class="nav-item {{ 'laratrust'==request()->path() ? 'active':'' }} ">
                    <a class="nav-link" href="{{ url('laratrust') }}">
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="9" cy="7" r="4" /><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /><path d="M21 21v-2a4 4 0 0 0 -3 -3.85" /></svg></span>
                      <span class="nav-link-title">Role Management</span>
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
          <a  class = "dropdown-item" data-bs-toggle="modal" data-bs-target="#modal-simple1">Profile</a>
          <a  class = "dropdown-item" href="{{ url('settings') }}">settings</a>
          <form id="logout" method="post" action="{{ route('logout') }}">
            @csrf
            <a href="javascript:document.getElementById('logout').submit();" class="dropdown-item">Logout</a>
          </form>
        </div>
      </div>
    </div>
  </div>
 

</header>
<div class="modal modal-blur fade" id="modal-simple1" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Profile</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <div class="form-group col">
          <?php $try = \Auth::user(); ?>
                            <div class="row">
                                <label class="col-sm-4 control-label"><b>Name :</b> <br> <span class="font-weight-bolder">{{$try->name }}</span></br></label>
                            </div>
                            <div class="row">
                                <label class="col-sm-4 control-label"><b>Email :</b> <br> <span class="font-weight-bolder">{{$try->email }}</span></br></label>
                            </div>
                            <div class="row">
                                <label class="col-sm-4 control-label"><b>Account Created at :</b> <br> <span class="font-weight-bolder">{{$try->created_at }}</span></br></label>
                            </div>
                           
          </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn me-auto" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>  
    