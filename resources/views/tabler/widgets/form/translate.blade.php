<div class="{{$viewClass['form-group']}}">

    <label class="{{$viewClass['label']}} control-label">
        {!! $label !!}
    </label>

    <div class="{{$viewClass['field']}}">

        @if ($prepend)
            <span class="input-group-prepend"><span class="input-group-text bg-white">{!! $prepend !!}</span></span>
        @endif
        
        <input {!! $attributes !!} />
        <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Translate</button>
        <div class="dropdown-menu" style="margin: 0px;">
            <a class="dropdown-item translate" data-id="zh" href="javascript:void()">简体中文</a>
            <a class="dropdown-item translate" data-id="zh-TW" href="javascript:void()">繁体中文</a>
            <a class="dropdown-item translate" data-id="en" href="javascript:void()">English</a>
            <!-- <a class="dropdown-item translate" data-id="fr" href="javascript:void()">French</a> -->
            <a class="dropdown-item translate" data-id="ja" href="javascript:void()">Japanese</a>
        </div>
        @if ($append)
            <span class="input-group-append">{!! $append !!}</span>
        @endif
    </div>
</div>

<script>
// $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });

$(document).ready(function () {
  $(".translate").click(function() {
    if ($("#{{ $id }}").val()) {
        $.ajax({
            type: 'POST',
            url: "{{ url('/api/tencent/textTranslate') }}",
            data: {"_token":"{{ csrf_token() }}","text":$("#{{ $id }}").val(),"target":this.dataset.id},
            success: function(data) {
                if (data.code==500) {
                    console.log(data);
                    alert("API 500 Error");
                } else if (data.TargetText) {
                    $("#{{ $id }}").val(data.TargetText);
                } else {
                    alert("Unkown Error");
                }
            }
        });
    } else {
        alert("Field cannot be empty");
    }
  });
});
</script>
