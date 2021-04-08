@extends('layouts.app')

@section('content')

<div class="container-tight py-6">
    <div class="text-center mb-4 bg-azure" >
        <a href="." ><img src="/logo.png" height="36" alt=""></a>
    </div>
    <form class="card card-md" method="POST" action="{{ route('login') }}">
        <div class="card-body">
        <h2 class="card-title text-center mb-4">Login to your account</h2>


        <form class="card card-md" method="POST" action="{{ route('login') }}">


        <div class="mb-3">
            <label class="form-label">Email address</label>
            @csrf

            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="mb-2">
            <label class="form-label">
            Password
            <span class="form-label-description">
            @if (Route::has('password.request'))
                <a href="{{ route('password.request') }}">
                    {{ __('Forgot Your Password?') }}
                </a>
            @endif
            </span>
            </label>
            <div class="input-group input-group-flat">
            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

            @error('password')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
            <span class="input-group-text">
                <a href="#" class="link-secondary" title="Show password" data-bs-toggle="tooltip"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="2" /><path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7" /></svg>
                </a>
            </span>
            </div>
        </div>
        <div class="mb-2">
            <label class="form-check">
            <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

            <span class="form-check-label">Remember me on this device</span>
            </label>
        </div>
        <div class="form-footer">
            <button type="submit" class="btn btn-primary w-100">Sign in</button>
        </div>
        </div>
        <div class="hr-text">or</div>
          <div class="card-body">
            <div class="row">
              <div class="col"><a href="https://moodle.hku.hk/" class="btn btn-white w-100">
               <img src="/hku.jpg"  alt="Image" width="24" height="24"  /> 
                   Login with your HKU account
                </a></div>
            </div>
          </div>
    </form>
    <div class="text-center text-muted mt-3">
        Don't have account yet? <a href="/register" tabindex="-1">Sign up</a>
    </div>
</div>




@endsection
