# Laradmin

A laravel administrative interface that can help you build a CRUD backend with low/no-code. Inspired by [laravel-admin](https://laravel-admin.org/docs/en/), the difference is Laradmin builds backend base on metadata (JSON), and using JSON to combine widgets and components to implement interfaces.

## Group Member
JF Xia
Joseph Kwan

## Requirements
PHP >= 7.2
Laravel = 6.20

## Features
- User Management with RBAC (Role-Based Access Control) - JF Xia
- CRUD Backend Model Page Template(tabler)/Grid/Form - JF Xia
- CRUD Backend Model Show/Widgets - JF Xia/Joseph Kwan
- CRUD Backend Designer & Generator - Joseph Kwan
- Report Designer & Generator - Joseph Kwan

## Specifications
1. Apply Tabler base Bootstrap 4.0 to layout.blade.php
2. Manage Account & User Login
   1. Login: Username and password are required.
   2. can create/update/delete account by admin
3. User can create a model, e.g. travel ideas
   1. Create Entity name (travel ideas) and attributes for the model
   2. User can add new Attributes for the model with entity_id(entity id for travel idea), label, data_type(e.g. varchar, int, json), front_type (e.g. text, select, image)
      1. e.g. travel ideas entity has some attributes (e.g. [{label:'title',data_type:'varchar',front_type:'text'},{label:'start date',data_type:'date',front_type:'date picker'},{label:'tags',data_type:'json',front_type:'tag'},])
      2. data_type is same as mysql data type
   3. Attributes's front_type is extendable by template function, including: text, data, select, etc.
      1. Extend template view for \<input\>, \<button\>, model grid, model form. 
        e.g. view('input',['field':'col-md-8','label':'Title','type':'text','name':'title'])
      2. Use google map open api for location select (front_type)
      3. Use google(or aliyun) Cloud Object Storage open api for image upload (front_type)
4. Auto Generate CRUD(Create/Read/Update/Delete) Backend Model code
   1. Use data_type and label in Entity (travel ideas) and Model/Migrate/Controller template to Auto Generate code
   2. Use front_type and label in Entity (travel ideas) to Auto Generate form view (index/show/edit/create.blade.php)
   3. Search function for Grid, admin can set Search fields in Entity Attributes
   4. Data validations for Form, admin can set field validations in Entity Attributes
5. Create Report model 
   1. Create a report with a Entity, or build a select sql with some setting 
   2. Use chart.js and view template to show the chart report
6. RBAC (Role-Based Access Control)
   1. For model
   2. For model Attributes
   3. For data row
   4. For report

## Built With
- [Laravel] (http://laravel.com)
- [Tabler base Bootstrap 4.0] (https://github.com/tabler/tabler)
- [apexcharts.js] (https://github.com/apexcharts/apexcharts.js)
- [Form generator] (https://github.com/JakHuang/form-generator)
- [Composer] (https://getcomposer.org/)
- [MySQL] (https://mysql.com)
- [NPM] (https://www.npmjs.com/)
- [Chart.js] (https://www.chartjs.org/)

## Open API
- [Google Map] (http://Google.com)
- [Cloud Object Storage] (Tencent Cloud)

## Demo Application

## ScreenShots

## TODO
- [ ] Workflow (BPMN 2.0) 
- [ ] Localization 
- [ ] Documentation 

## License
laradmin is licensed under The MIT License (MIT).
