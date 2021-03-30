<div class="{{$viewClass['form-group']}}">

    <label class="{{$viewClass['label']}} control-label">
        {!! $label !!}
    </label>

    <div class="{{$viewClass['field']}}">

        @if ($prepend)
            <span class="input-group-prepend"><span class="input-group-text bg-white">{!! $prepend !!}</span></span>
        @endif
        <input {!! $attributes !!} />

        @if ($append)
            <span class="input-group-append">{!! $append !!}</span>
        @endif
    </div>
</div>


@section("js")
<script src="/dist/libs/litepicker/dist/litepicker.js"></script>
<script>
    // @formatter:off
    document.addEventListener("DOMContentLoaded", function () {
    	window.Litepicker && (new Litepicker({
    		element: document.getElementById('{!! $id !!}'),
    		buttonText: {
    			previousMonth: '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="15 6 9 12 15 18" /></svg>',
    			nextMonth: '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="9 6 15 12 9 18" /></svg>',
    		},
    	}));
    });
    // @formatter:on
  </script>

@endsection