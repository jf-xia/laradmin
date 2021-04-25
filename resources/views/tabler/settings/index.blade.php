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
    <title>Settings</title>
    <!-- CSS files -->
    <link href="./dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="./dist/css/demo.min.css" rel="stylesheet"/>
  </head>

  <body class="antialiased border-top-wide border-primary d-flex flex-column">
  @include('tabler.partials.header')  
  
  <div class="container">
  @if ($errors->any())
  <div class="alert alert-danger">
    <ul>
      @foreach($errors->all() as $error)
      <li>
        {{$error}}
      </li>
      @endforeach
    </ul>
   </div>
  @endif
  @if(session()->get('message'))
  <div class="alert alert-success" role="alert">
    <strong>Success: </strong>{{session()->get('message')}}
  </div>
  @endif
    <div class="container-xl">
      <!-- Page title -->
      <div class="page-header d-print-none">
        <div class="row align-items-center">
          <div class="col">
            <h2 class="page-title">
              User Profile
            </h2>
          </div>
        </div>
      </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{Auth::user()->name}}'s Profile</div>
                
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if($message = Session::get('success'))
                      <div class="alert alert-success">
                   <p>{{$message}}</p>
                      </div>
                   @endif
                    <form action="{{url('settings')}}" method="POST">
                    @csrf
                       <div class="form-group">
                           <label class="form-label col-3 col-form-label control-label" for="name">
                            <strong>Name: </strong></label>
                           <input type="text" class="form-control" id ="name" name="name" value="{{Auth::user()->name}}">
                           <small class="form-hint">Current Name: {{Auth::user()->name}}</small>
                       </div>
                        <div class="form-group">
                           <label class="form-label col-3 col-form-label control-label" for="email">
                            <strong>Email: </strong></label>
                           <input type="text" class="form-control" id ="email" value="{{Auth::user()->email}}" name="email">
                           <small class="form-hint">Current Email: {{Auth::user()->email}}</small>
                       </div>
                       <div class="form-footer">
                         <button type="submit" class="btn btn-primary">Update Profile</button>
                       </div>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Libs JS -->
    <!-- Tabler Core -->
    <script src="./dist/js/tabler.min.js"></script>
  </body>
</html>
