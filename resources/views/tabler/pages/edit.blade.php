
@extends('tabler.layouts.container')
@section('page')

<div class="col-12">
  <div class="card">
      <div class="card-body border-bottom py-3">
        <form action="{!! route('page.update',$page->id) !!}" method="POST">
          {{ method_field('PUT') }}
          {{ csrf_field() }}
          <div class="row">
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">Title</label>
              <input type="text" value="{{ $page->title }}" class="form-control" name="title" placeholder="Input title">
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">URL</label>
              <input type="text" value="{{ $page->url }}" class="form-control" name="url" placeholder="Input URL">
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">Model</label>
              <input type="text" value="{{ $page->model }}" class="form-control" name="model" placeholder="Input Model">
            </div>
          </div>
          </div>
          <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" name="description" rows="3" placeholder="Description Content.." spellcheck="false">{{ $page->description }}</textarea>
          </div>
          <div class="mb-3">
            <label class="form-label">Template</label>
            <div id="jsoneditor"></div>
            <input id="template" type="hidden" name="template" placeholder="Input template">
          </div>
          <div class="form-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
  </div>
</div>

@section("js")
<link href="/vendor/jsoneditor/jsoneditor.css" rel="stylesheet" type="text/css">
<script src="/vendor/jsoneditor/jsoneditor.min.js"></script>

<script>

const containerField = document.getElementById('template')
const json = {!! json_encode($page->template) !!}

const schema = {
  "title": "PageTemplate",
  "description": "Object containing Page Templates",
  "type": "object",
  "properties": {
    "form": {
      "$ref": "form"
    },
    "table": {
      "$ref": "table"
    }
  }
  // "required": ["firstName", "lastName"]
}

const form = {
  "title": "form description",
  "type": "object",
  "required": ["title","action"],
  "properties": {
    "title": {
      "type": "string",
      "examples": [
        "ACME",
      ]
    },
  }
}

const table = {
  "title": "table description",
  "type": "object",
  "required": ["title","delete"],
  "properties": {
    "title": {
      "type": "string",
      "examples": [
        "ACME",
      ]
    },
  }
}

const options = {
  schema: schema,
  schemaRefs: {"form": form,"table": table},
  mode: 'tree',
  modes: ['tree', 'code'], // other modes 'form', 'text', 'view', 'preview'
  onError: function (err) {
    alert(err.toString())
  },
  // autocomplete: {
  //     getOptions: function () {
  //       return ['apple', 'cranberry'];
  //     }
  // },
  // onModeChange: function (newMode, oldMode) {
  //   console.log('Mode switched from', oldMode, 'to', newMode)
  // },
  onValidate: function (json) {
    var errors = [];
    // if(!isNaN(json.age) && json.age < 30) {
    //   errors.push({ path: ['age'], message: 'Member age must be 30 or higher' });
    // }
    containerField.value=JSON.stringify(json);//.replace(/\"/g,"'")
    return errors;
  },
  templates: [
    {
      text: 'Input Box',
      title: 'Insert a Input Box',
      className: 'jsoneditor-type-object',
      field: 'InputBoxTemplate',
      value: {
          "id": "input name",
          "name": "name",
          "type": "text",
          "class": "form-control",
          "front": "input",
          "label": "Name",
          "placeholder": "text"
        }
    },
    {
      text: 'Form',
      title: 'Insert a Form',
      className: 'jsoneditor-type-object',
      field: 'form',
      value: {
            "title": "Create XXX",
            "action": "model/XXXs",
            "fields": [
              {
                "id": "name",
                "name": "name",
                "type": "text",
                "class": "form-control",
                "front": "input",
                "label": "XXX Name",
                "placeholder": "text"
              }
            ],
            "viewClass": {
              "field": "col",
              "label": "form-label col-3 col-form-label",
              "form-group": "form-group mb-3 row"
            },
            "subTemplate": "1"
        }
    },
    {
      text: 'Table',
      title: 'Insert a Table',
      className: 'jsoneditor-type-object',
      field: 'table',
      value: {
            "title": "XXX List",
            "delete": "model/XXXs",
            "columns": {
              "id": "ID",
              "name": "XXX Name",
              "created_at": "Create At",
              "updated_at": "Updated At",
            },
            "searchField": "name"
          }
    },
  ]
}

// create the editor
const container = document.getElementById('jsoneditor')
const editor = new JSONEditor(container, options, json)
editor.expandAll()
// containerField.value=editor.getText()
</script>

@endsection

@endsection