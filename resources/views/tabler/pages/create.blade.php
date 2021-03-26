
@extends('tabler.layouts.container')
@section('page')

<div class="col-12">
  <div class="card">
      <div class="card-body border-bottom py-3">
        <form action="{!! url('page/store') !!}" method="POST">
          {{ csrf_field() }}
          <div class="row">
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">Title</label>
              <input type="text" class="form-control" name="title" placeholder="Input title">
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">URL</label>
              <input type="text" class="form-control" name="url" placeholder="Input URL">
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-3">
              <label class="form-label">Model</label>
              <input type="text" class="form-control" name="model" placeholder="Input Model">
            </div>
          </div>
          </div>
          <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" name="description" rows="3" placeholder="Description Content.." spellcheck="false"></textarea>
          </div>
          <div class="mb-3">
            <label class="form-label">Template</label>
            <div id="jsoneditor"></div>
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

const json = {
  firstName: 'John',
  lastName: 'Doe',
  gender: null,
  age: "28",
  availableToHire: true,
  job: {
    company: 'freelance',
    role: 'developer',
    salary: 100
  }
}

// const schema = {
//   "title": "PageTemplate",
//   "description": "Object containing Page Templates",
//   "type": "object",
//   "properties": {
//     "firstName": {
//       "title": "First Name",
//       "description": "The given name.",
//       "examples": [
//         "John"
//       ],
//       "type": "string"
//     },
//     "lastName": {
//       "title": "Last Name",
//       "description": "The family name.",
//       "examples": [
//         "Smith"
//       ],
//       "type": "string"
//     },
//     "gender": {
//       "title": "Gender",
//       "enum": ["male", "female"]
//     },
//     "availableToHire": {
//       "type": "boolean",
//       "default": false
//     },
//     // "age": {
//     //   "description": "Age in years",
//     //   "type": "integer",
//     //   "minimum": 0,
//     //   "examples": [28, 32]
//     // },
//     "job": {
//       "$ref": "job"
//     }
//   },
//   "required": ["firstName", "lastName"]
// }

// const job = {
//   "title": "Job description",
//   "type": "object",
//   "required": ["address"],
//   "properties": {
//     "company": {
//       "type": "string",
//       "examples": [
//         "ACME",
//         "Dexter Industries"
//       ]
//     },
//     "role": {
//       "description": "Job title.",
//       "type": "string",
//       "examples": [
//         "Human Resources Coordinator",
//         "Software Developer"
//       ],
//       "default": "Software Developer"
//     },
//     "address": {
//       "type": "string"
//     },
//     "salary": {
//       "type": "number",
//       "minimum": 120,
//       "examples": [100, 110, 120]
//     }
//   }
// }

const options = {
  // schema: schema,
  // schemaRefs: {"job": job},
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
  templates: [
    {
      text: 'Person',
      title: 'Insert a Person Node',
      className: 'jsoneditor-type-object',
      field: 'PersonTemplate',
      value: {
        'firstName': 'John',
        'lastName': 'Do',
        'age': 28
      }
    },
    {
      text: 'Address',
      title: 'Insert a Address Node',
      field: 'AddressTemplate',
      value: {
        'street': '',
        'city': '',
        'state': '',
        'ZIP code': ''
      }
    }
  ]
}

// create the editor
const container = document.getElementById('jsoneditor')
const editor = new JSONEditor(container, options, json)
editor.expandAll()
</script>

@endsection

@endsection