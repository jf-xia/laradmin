<div class="col-12">
<div class="card">
    <div class="card-header">
    <h3 class="card-title">Invoices</h3>
    </div>
    <div class="card-body border-bottom py-3">
    <div class="d-flex">
        <a href="#" class="btn btn-success w-10" data-bs-toggle="modal" data-bs-target="#modal-team">Create</a>
        <div class="ms-auto text-muted">
        Search:
        <div class="ms-2 d-inline-block">
            <input type="text" class="form-control form-control-sm" aria-label="Search invoice">
        </div>
        </div>
    </div>
    </div>
    <div class="table-responsive">
    <table class="table card-table table-vcenter text-nowrap datatable">
        <thead>
        <tr>
        @foreach($data as $header)
            <th>{{ $header }}</th>
        @endforeach
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($rows->items() as $row)
        <tr>
            @foreach($data as $col=>$label)
            <td>{{ $row->$col }}</td>
            @endforeach
            <td>
                <a href="#" data-toggle-icon="edit" title="edit" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;16&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;5&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;19&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;8&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3"></path><path d="M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3"></path><line x1="16" y1="5" x2="19" y2="8"></line></svg></a>
                <a href="#" data-toggle-icon="trash" title="trash" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;4&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;20&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
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