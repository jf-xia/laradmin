<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\System\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class CustomerController
{

    /**
     * customer edit page
     */
    public function edit($id)
    {
        $page = new Page();
        $page->title = "Edit Customer";
        $page->description = " - CRM";
        $customer = Customer::find($id);
        if ($customer->user_id != Auth::id()) {
            abort(401);
        }
        $relations = Page::query()->findMany([28,29,30]);
        
        return view('tabler.customers.edit',compact('id','page','customer','relations'));
    }

    /**
     * customer update to Database
     */
    public function update($id)
    {
        $data = request()->except(['_token','_method']);
        try {
            $customer = Customer::find($id)->update($data);
        } catch (\Throwable $th) {
            throw $th;
        }
        session()->flash('admin-toastr', ['type'=>'success','message'=>'Customer Update Success!']);
        return redirect(route('page.show',['page'=>'customer']));
    }

    /**
     * customer store to Database
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);
        try {
            $customer = new Customer();
            foreach ($request->except(['_token']) as $key => $value) {
                $customer->$key = $value;
            }
            $customer->user_id = Auth::user()->id;
            $customer->save();
            session()->flash('admin-toastr', ['type'=>'success','message'=>'Customer Create Success!']);
        } catch (\Throwable $th) {
            session()->flash('admin-toastr', ['type'=>'error','message'=>'Customer Create Failed!']);
            Log::error('Customer store',[$th]);
        }
        return redirect(route('customer.edit',['customer'=>$customer->id]));
    }
}
