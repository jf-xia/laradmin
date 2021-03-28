@if(Session::has('admin-toastr'))
    @php
        $toastr  = Session::get('admin-toastr');
        $type    = $toastr['type'] ?? 'success';
        $message = $toastr['message'] ?? '';
        $options = json_encode($toastr['options']??[]);
    @endphp
    <script>$(function () { toastr.{{$type}}('{!!  $message  !!}', null, {!! $options !!}); })</script>
@endif
<link href="/vendor/toastr/toastr.min.css" rel="stylesheet"/>
<script src="/vendor/toastr/toastr.min.js"></script>