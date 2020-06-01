<?php

namespace App\Http\Controllers\API;

use App\Genre;
use App\Http\Controllers\Controller;
use App\Movie;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Movie::latest('id')->with('genres')->get()->toJson();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $newMovie = new Movie;
        $newMovie->fill($request->only([
            'title', 'description', 'director', 'stars', 'length', 'year'
        ]));

        $image = $request->file('image');
        $filename = time().'.'.$image->getClientOriginalExtension();
        $image->move(public_path('storage/imgs'), $filename);
        $newMovie->image = $filename;

        $newMovie->saveOrFail();

        $newMovie->genres()->sync(json_decode($request->genres));

        return response()->json(['movie' => $newMovie->load('genres')]);
    }
}
