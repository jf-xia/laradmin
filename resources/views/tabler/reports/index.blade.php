@extends('tabler.reports.layouts.container')
@section('page')
<div class="pcoded-wrapper">
    <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper">
                    <div class="page-body">
                        <div class="row">
                            <!-- order-card start -->
                            <div class="col-md-6 col-xl-3">
                                <div class="card bg-c-blue order-card">
                                    <div class="card-block">
                                        <h6 class="m-b-20">Total Users registered</h6>
                                        <h1 class="text-right"><i class="fa fa-user-o f-left"></i><span>{{$usercount}}</span></h1>
                                        <p class="m-b-0"><a href="{{ url('page/users') }}">SEE MORE</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                                <div class="card bg-c-green order-card">
                                    <div class="card-block">
                                        <h6 class="m-b-20">Total roles available</h6>
                                        <h1 class="text-right"><i class="ti-tag f-left"></i><span>{{$rolecount}}</span></h1>
                                        <p class="m-b-0"><a href="{{ url('page/roles') }}">SEE MORE</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                                <div class="card bg-c-yellow order-card">
                                    <div class="card-block">
                                        <h6 class="m-b-20">Total Tasks created</h6>
                                        <h1 class="text-right"><i class="ti-reload f-left"></i><span>{{$taskcount}}</span></h1>
                                        <p class="m-b-0"><a href="{{ url('page/tasks') }}">SEE MORE</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-3">
                                <div class="card bg-c-pink order-card">
                                    <div class="card-block">
                                        <h6 class="m-b-20">New users added for today</h6>
                                        <h2 class="text-right"><i class="fa fa-user f-left"></i><span>{{$users}}</span></h2>
                                        <p class="m-b-0"><a href="{{ url('page/users') }}">SEE MORE</a>
                                    </div>
                                </div>
                            </div>
                            <!-- order-card end -->
                            <!-- social statustic start -->
                            <div class="col-md-12 col-lg-4">
                                <div class="card">
                                    <div class="card-block text-center">
                                        <i class="fa fa-envelope-open text-c-blue d-block f-40"></i>
                                        <h4 class="m-t-20"><span class="text-c-blue">8.62k</span> Subscribers</h4>
                                        <p class="m-b-20">Your main list is growing</p>
                                        <button class="btn btn-primary btn-sm btn-round">Manage List</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card">
                                    <div class="card-block text-center">
                                        <i class="fa fa-twitter text-c-green d-block f-40"></i>
                                        <h4 class="m-t-20"><span class="text-c-blgreenue">+40</span> Followers</h4>
                                        <p class="m-b-20">Your main list is growing</p>
                                        <button class="btn btn-success btn-sm btn-round">Check them out</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card">
                                    <div class="card-block text-center">
                                        <i class="fa fa-puzzle-piece text-c-pink d-block f-40"></i>
                                        <h4 class="m-t-20">Business Plan</h4>
                                        <p class="m-b-20">This is your current active plan</p>
                                        <button class="btn btn-danger btn-sm btn-round">Upgrade to VIP</button>
                                    </div>
                                </div>
                            </div>
                            <!-- social statustic end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




@endsection