
<div class="card">
    <div class="card-header">
        <h3 class="card-title">{{ $data['title'] }}</h3>
    </div>
    <div class="card-body">
        <form action="{!! $data['action'] !!}" method="POST">
            {!! $data['fields'] !!}
            <div class="form-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>
</div>