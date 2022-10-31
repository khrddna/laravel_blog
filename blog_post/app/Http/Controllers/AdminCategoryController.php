<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('admin');
        return view('dashboard.categories.index',[
            'categories' => Category::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.categories.index');
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
            'slug' => 'required|unique:categories',
            'image' => 'image|file|max:1024'
        ]);

     if ($request->file('image')) {
           $validatedData['image'] = $request->file('image')->store('post-images');
       }

    Category::create($validatedData);

    return redirect('/dashboard/categories')->with('succes', 'New Category has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
         return view('dashboard.categories.index', [
            'category' => $category,
              ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
         $rules = [
            'name' => 'required|max:255',
            'image' => 'image|file|max:1024'
        ];

         if ($request->slug != $category->slug) {
           $rules['slug'] = 'required|unique:categories';
       }

       $validatedData = $request->validate($rules);

       if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
           $validatedData['image'] = $request->file('image')->store('post-images');
       }

    Category::where('id', $category->id)
            ->update($validatedData);

    return redirect('/dashboard/categories')->with('succes', 'Category has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
         Category::destroy($category->id);
       return redirect('/dashboard/categories')->with('succes', 'Category has been Deleted!');
    }

}
