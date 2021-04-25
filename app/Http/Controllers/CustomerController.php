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
     * @param int $id
     * @return view
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
     * customer update in Database
     * @param int $id
     * @param Request $request
     * @return redirect show page
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|unique:customers|max:255'
        ]);
        $data = $request->except(['_token','_method']);
        try {
            $customer = Customer::find($id)->update($data);
        } catch (\Throwable $th) {
            throw $th;
        }
        session()->flash('admin-toastr', ['type'=>'success','message'=>'Customer Update Success!']);
        return redirect(route('page.show',['page'=>'customer']));
    }

    /**
     * customer store in Database
     * @param Request $request
     * @return redirect edit page
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:customers|max:255'
        ]);
        try {
            $customer = new Customer();
            foreach ($request->except(['_token']) as $key => $value) {
                $customer->$key = $value;
            }
            $customer->user_id = Auth::user()->id;
            $customer->save();
            session()->flash('admin-toastr', ['type'=>'success','message'=>'Customer Created Success!']);
        } catch (\Throwable $th) {
            session()->flash('admin-toastr', ['type'=>'error','message'=>'Customer Created Failed!']);
            Log::error('Customer store',[$th]);
        }
        return redirect(route('customer.edit',['customer'=>$customer->id]));
    }

    /**
     * customer delete in Database
     * @param int $id
     * @return json
     */
    public function destroy($id)
    {
        try {
            $customer = Customer::findOrFail($id);
            if ($customer->user_id != Auth::id()) {
                return response()->json(['code'=>401,'msg'=>'Unauthorized! This Customer does not belong to you.']);
            }
            $customer->delete();
        } catch (\Throwable $th) {
            Log::error('model destroy',[$th]);
            return response()->json(['code'=>500,'msg'=>'Server Error!']);
        }
        return response()->json(['code'=>200,'msg'=>'Delete Success!']);
    }
}
