<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class Adminprofilemanagement extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = $this->getData();
       
       return view('admin.cms.profilemanagement', ['alldata' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data = $this->getData();
       
        return view('admin.cms.editadminprofile', ['alldata' => $data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $xel = User::where('id',$id)->get();

        if (Hash::check($request->current_password, $xel[0]->password)) {
            if($request->new_password==$request->cnf_password){
                $user = User::find($id);
                $user->update([
                    'password' => Hash::make($request->new_password),
                ]);
                return redirect()->route('adminprofile.index');
            }else{
                return redirect()->back()->with('error', 'Password Confirmation is not same.');
            }


        }else{
            return redirect()->back()->with('error', 'Current password is incorrect');
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        
    }

    public function getData(){
        $alldata = User::where('id',auth()->user()->id)->get()->toArray();
        return $alldata;
    }
}
