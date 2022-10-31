<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;
// use Illuminate\Support\Facades\Input;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('admin');
        return view('dashboard.users.index',[
            'users' => User::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.users.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|min:3|max:255|unique:users',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5|max:255',
            'is_admin' => 'required'
        ]);

        $validatedData['password'] = bcrypt($validatedData['password']);

        User::create($validatedData);

        return redirect('/dashboard/users')->with('succes', 'New User has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        // return view('dashboard.users.index', [
        //     'user' => $user,
        //       ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        // validate
        // read more on validation at http://laravel.com/docs/validation
        $rules = array(
        'name' => ['required', 'max:60'],
        'username' => ['required', 'max:60', Rule::unique('users')->ignore($user->id)],
        'email' => ['required', 'max:60', Rule::unique('users')->ignore($user->id)],
        'is_admin' => 'required',
         
        );
        $validator = Validator::make($request->all(), $rules);
       // dd($request);
        // process the login
        if ($validator->fails()) {
            return Redirect::to('dashboard/' . $user->id . '/users')
                ->withErrors($validator)
                ->withInput(Input::except('password'));
        } else {
            // store
            $user = User::find($user->id);
            $user->name       = $request->name;
            $user->username   = $request->username;
            $user->email      = $request->email;
            $user->is_admin   = $request->is_admin;
            $user->save();

            // redirect
            
           return redirect('/dashboard/users')->with('succes', 'User has been updated!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        User::destroy($user->id);
       return redirect('/dashboard/users')->with('succes', 'User has been Deleted!');
    }
}
