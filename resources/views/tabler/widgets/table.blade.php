<script 
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBilYanAx7OLAlCJ9I70UpDx0O6oOKuzAs&libraries=places&v=weekly&libraries=places" 
    ></script>
<div class="col-12">
<div class="card">
    <div class="card-header">
    <h3 class="card-title">{{ $data['title'] }}</h3>
    </div>
    <div class="card-body border-bottom py-3">
    <div class="d-flex">
        <a href="#" class="btn btn-success w-10" data-bs-toggle="modal" data-bs-target="#modal-{{ str_replace('/','-',$data['delete']) }}">Create</a>
        <div class="ms-auto text-muted">
        Search:
        <div class="ms-2 d-inline-block">
            <form action="" method="GET">
                <div class="input-group mb-2">
                    <input type="text" name="q" value="{{ request()->get('q','') }}" class="form-control" placeholder="Search for…">
                    <button class="btn btn-white btn-icon" type="submit"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="10" cy="10" r="7"></circle><line x1="21" y1="21" x2="15" y2="15"></line></svg></button>
                </div>
            </form>
        </div>
        </div>
    </div>
    </div>
    <div class="table-responsive">
    <table class="table card-table table-vcenter text-nowrap datatable">
        <thead>
        <tr>
          @foreach($data['columns'] as $header)
            @if(is_string($header))
            <th>{{ $header }}</th>
            @else
            <th>{{ $header['label'] }}</th>
            @endif
          @endforeach
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($rows->items() as $row)
        <tr>
            @foreach($data['columns'] as $col=>$label)
                @if(isset($label['html']))
                <td>{!! str_replace('$$$val$$$',$row->$col,$label['html']) ?? '' !!}</td>
                @elseif($col == 'location')
                <td><a href="#" class="btn btn-white" data-bs-toggle="modal" data-bs-target="#modal-simple{{$row->id}}">
                {{ $row->$col }}</a>
               <div class="modal modal-blur fade" id="modal-simple{{$row->id}}" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">{{ $row->$col }}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
                  <div class="card-title"></div>
                  <div class="ratio ratio-16x9">
                    <div>
                      <div id="map{{$row->id}}" class="w-100 h-100"></div>
                    </div>
                  </div>
        
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      
      let map{{$row->id}};
      let service{{$row->id}};
      let infowindow{{$row->id}};

      document.addEventListener("DOMContentLoaded", function() { 
        const sydney = new google.maps.LatLng(-33.867, 151.195);
        infowindow{{$row->id}} = new google.maps.InfoWindow();
        map{{$row->id}} = new google.maps.Map(document.getElementById("map{{$row->id}}"), {
          center: sydney,
          zoom: 15,
        });
        const request = {
          query: "{{ $row->$col }}",
          fields: ["name", "geometry"],
        };
        service{{$row->id}} = new google.maps.places.PlacesService(map{{$row->id}});
        service{{$row->id}}.findPlaceFromQuery(request, (results, status) => {
          if (status === google.maps.places.PlacesServiceStatus.OK && results) {
            for (let i = 0; i < results.length; i++) {
              createMarker(results[i]);
            }
            map{{$row->id}}.setCenter(results[0].geometry.location);
          }
        });
      })

      function createMarker(place) {
        if (!place.geometry || !place.geometry.location) return;
        const marker = new google.maps.Marker({
          map{{$row->id}},
          position: place.geometry.location,
        });
        google.maps.event.addListener(marker, "click", () => {
          infowindow{{$row->id}}.setContent(place.name || "");
          infowindow{{$row->id}}.open(map);
        });
      }
    </script>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn me-auto" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
                <td>
                @else
                <td>{{ $row->$col }}</td>
                @endif
            @endforeach

            <td>
                <!-- <a href="#" data-toggle-icon="edit" title="edit" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;16&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;5&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;19&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;8&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M9 7h-3a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-3"></path><path d="M9 15h3l8.5 -8.5a1.5 1.5 0 0 0 -3 -3l-8.5 8.5v3"></path><line x1="16" y1="5" x2="19" y2="8"></line></svg></a> -->
                @if($data['delete'])
                <a class="delete-{{ str_replace('/','-',$data['delete']) }}" href="javascript:void(0)" data-id="{{ $row->id }}" data-toggle-icon="trash" title="trash" data-icon-svg="<figure class=&quot;highlight&quot;><pre><code class=&quot;language-html&quot; data-lang=&quot;html&quot;><span class=&quot;nt&quot;>&amp;lt;svg</span> <span class=&quot;na&quot;>xmlns=</span><span class=&quot;s&quot;>&quot;http://www.w3.org/2000/svg&quot;</span> <span class=&quot;na&quot;>class=</span><span class=&quot;s&quot;>&quot;icon&quot;</span> <span class=&quot;na&quot;>width=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>height=</span><span class=&quot;s&quot;>&quot;24&quot;</span> <span class=&quot;na&quot;>viewBox=</span><span class=&quot;s&quot;>&quot;0 0 24 24&quot;</span> <span class=&quot;na&quot;>stroke-width=</span><span class=&quot;s&quot;>&quot;2&quot;</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;currentColor&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>stroke-linecap=</span><span class=&quot;s&quot;>&quot;round&quot;</span> <span class=&quot;na&quot;>stroke-linejoin=</span><span class=&quot;s&quot;>&quot;round&quot;</span><span class=&quot;nt&quot;>&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>stroke=</span><span class=&quot;s&quot;>&quot;none&quot;</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M0 0h24v24H0z&quot;</span> <span class=&quot;na&quot;>fill=</span><span class=&quot;s&quot;>&quot;none&quot;</span><span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;4&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;20&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;7&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;10&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;line</span> <span class=&quot;na&quot;>x1=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y1=</span><span class=&quot;s&quot;>&quot;11&quot;</span> <span class=&quot;na&quot;>x2=</span><span class=&quot;s&quot;>&quot;14&quot;</span> <span class=&quot;na&quot;>y2=</span><span class=&quot;s&quot;>&quot;17&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;path</span> <span class=&quot;na&quot;>d=</span><span class=&quot;s&quot;>&quot;M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3&quot;</span> <span class=&quot;nt&quot;>/&amp;gt;&amp;lt;/svg&amp;gt;</span></code></pre></figure>">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="4" y1="7" x2="20" y2="7"></line><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line><path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12"></path><path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3"></path></svg></a>
                @endif
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

<script>
$(document).ready(function () {
  $(".delete-{{ str_replace('/','-',$data['delete']) }}").click(function(){
      if (confirm('Do you really want to remove it? What you have done cannot be undone.')) {
        var row = $(this);
        $.ajax({
            type: 'DELETE',
            url: "{{ url($data['delete']) }}/"+this.dataset.id,
            data: {"_token":"{{ csrf_token() }}"},
            success: function(data) {
                // console.log(data);
                if (data.code==200) {
                    row.parent().parent().remove();
                    toastr.success(data.msg);
                } else if (data.code==401) {
                    // alert(data.msg);
                    toastr.error(data.msg);
                } else {
                    toastr.error(data.msg);
                }
            }
        });
      }
  });
});
</script>

