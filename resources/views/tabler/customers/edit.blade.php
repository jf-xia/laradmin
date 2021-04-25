
@extends('tabler.layouts.container')
@section('page')
<div class="col-12">
  <div class="card">
      <div class="card-body border-bottom py-3">
        <form action="{!! url('customer/'.$id) !!}" method="POST">
          {{ method_field('PUT') }}
          {{ csrf_field() }}
          <div class="row">
          <div class="col-md-8">
            <div class="mb-3">
              <label class="form-label">Name</label>
              <input type="text" value="{{ $customer->name }}" class="form-control" name="name" placeholder="Input name">
            </div>
          </div>
          <div class="col-md-2">
            <div class="mb-3">
              <label class="form-label">Owner</label>
              <div class="form-control-plaintext">{{$customer->user->name}}</div>
            </div>
          </div>
          <div class="col-md-2">
            <div class="mb-3">
              <div class="form-footer">
                <button type="submit" class="btn btn-primary">Update</button>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <label class="form-label">Details</label>
            <textarea class="form-control" name="details" id="details" rows="6" placeholder="Content.." spellcheck="false">{{ $customer->details }}</textarea>
          </div>
        </form>
      </div>
  </div>
</div>
<h2>Relational Entities</h2>
<div class="col-12 ">
  <div class="card">
    <ul class="nav nav-tabs" data-bs-toggle="tabs">
      @foreach($relations as $relation)
      <li class="nav-item">
        <a href="#tabs-{{ $relation->id }}" class="nav-link {{ $loop->first ? 'active':''}}" data-bs-toggle="tab">{{ $relation->title }}</a>
      </li>
      @endforeach
    </ul>
    <div class="card-body">
      <div class="tab-content">
      @foreach($relations as $relation)
        <div class="tab-pane {{ $loop->first ? ' show active':''}}" id="tabs-{{ $relation->id }}">
          <div>{!! $relation->html('customer_id',$customer->id) !!}</div>
        </div>
      @endforeach
      </div>
    </div>
  </div>
</div>
@endsection
