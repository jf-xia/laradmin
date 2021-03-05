
    <div class="card">
        <div class="card-header">
        <h3 class="card-title">{{ $form['formTitle'] }}</h3>
        </div>
        <div class="card-body">
        <form>
            {!! $form['fields'] !!}
            <div class="form-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
        </div>
    </div>