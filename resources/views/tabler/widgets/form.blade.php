<div class="modal modal-blur fade" id="modal-team" tabindex="-1" style="display: none;" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">{{ $data['title'] }}</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="{!! url($data['action']) !!}" method="POST" enctype="multipart/form-data" >
                {{ csrf_field() }}
                {!! $data['fields'] !!}
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