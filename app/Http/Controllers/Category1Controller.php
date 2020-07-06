<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Category1Controller extends Controller
{
    //
    public function index()
    {
        return view('php', [
            'categories' => Category::paginate(10)
        ]);
    }


    public function create()
    {
        //
        return view('admin.categories.create', [
            'category'   => [],
            'categories' => Category::with('children')->where('parent_id', '0')->get(),
            'delimiter'  => ''
        ]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function store(Request $request)
    {

        Category::create($request->all());

        return redirect()->route('admin.category.index');
    }
}
