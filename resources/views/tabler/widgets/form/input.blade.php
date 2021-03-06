<div class="{{$viewClass['form-group']}}">

    <label class="{{$viewClass['label']}} control-label">
        {!! $label !!}
    </label>

    <div class="{{$viewClass['field']}}">

        <!-- include('tabler.widgets.form.error') -->


        @if ($prepend)
            <span class="input-group-prepend"><span class="input-group-text bg-white">{!! $prepend !!}</span></span>
        @endif
        <input {!! $attributes !!} />

        @if ($append)
            <span class="input-group-append">{!! $append !!}</span>
        @endif
        <!-- include('tabler.widgets.form.help-block') -->

    </div>
</div>