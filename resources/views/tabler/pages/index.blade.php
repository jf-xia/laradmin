
@extends('tabler.layouts.container')
@section('page')

<div class="col-12">
<div class="card">
    <div class="card-header">
    <h3 class="card-title">Page List</h3>
    </div>
    <div class="card-body border-bottom py-3">
    <div class="d-flex">
        <a href="{{ route('page.create') }}" class="btn btn-success w-10" >Create</a>
        <!-- <div class="ms-auto text-muted">
        Search:
        <div class="ms-2 d-inline-block">
            <form action="" method="GET">
                <div class="input-group mb-2">
                    <input type="text" name="q" value="{{ request()->get('q','') }}" class="form-control" placeholder="Search for…">
                    <button class="btn btn-white btn-icon" type="submit"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="10" cy="10" r="7"></circle><line x1="21" y1="21" x2="15" y2="15"></line></svg></button>
                </div>
            </form>
        </div>
        </div> -->
    </div>
    </div>
    <div class="table-responsive">
    <table class="table card-table table-vcenter text-nowrap datatable">
        <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>URL</th>
            <th>Model</th>
            <!-- <th>Template</th> -->
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($rows->items() as $row)
        <tr>
            <td>{{ $row->title }}</td>
            <td>{{ $row->description }}</td>
            <td>{{ $row->url }}</td>
            <td>{{ $row->model }}</td>
            <!-- <td>{{ $row->id }}</td> -->
            <td>
                <a href="{{ url('page/'.$row->id.'/edit') }}" data-toggle-icon="edit" title="edit" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;16&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;5&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;19&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;8&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3"></path><path d="M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3"></path><line x1="16" y1="5" x2="19" y2="8"></line></svg></a>
                <a class="delete" href="javascript:void()" data-id="{{ $row->id }}" data-toggle-icon="trash" title="trash" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;4&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;20&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="4" y1="7" x2="20" y2="7"></line><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line><path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12"></path><path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3"></path></svg></a>
            </td>
        </tr>
        @endforeach
        </tbody>
    </table>
    </div>
    <div class="card-footer d-flex align-items-center">
       {!! $rows->render() !!}
    </div>
</div>
</div>

<div class="modal modal-blur fade" id="modal-team" tabindex="-1" style="display: none;" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Create Page</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="{!! url('page/store') !!}" method="POST">
            {{ csrf_field() }}
            <div class="mb-3">
              <label class="form-label">Title</label>
              <input type="text" class="form-control" name="title" placeholder="Input title">
            </div>
            <div class="mb-3">
              <label class="form-label">Description</label>
              <textarea class="form-control" name="description" rows="6" placeholder="Description Content.." spellcheck="false"></textarea>
            </div>
            <div class="mb-3">
              <label class="form-label">URL</label>
              <input type="text" class="form-control" name="url" placeholder="Input URL">
            </div>
            <div class="mb-3">
              <label class="form-label">Model</label>
              <input type="text" class="form-control" name="model" placeholder="Input Model">
            </div>
            <div class="form-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn me-auto" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Add Team</button> -->
      </div>
    </div>
  </div>
</div>

@section("js")
    
<script>
// $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });

$(document).ready(function () {
  $(".delete").click(function(){
      if (confirm('Do you really want to remove it? What you have done cannot be undone.')) {
        var row = $(this);
        $.ajax({
            type: 'DELETE',
            url: '{{ url("page") }}/'+this.dataset.id,
            data: {"_token":"{{ csrf_token() }}"},
            success: function(data) {
                if (data.code==200) {
                    row.parent().parent().remove();
                }
            }
        });
      }
  });
});
</script>

@endsection

@endsection