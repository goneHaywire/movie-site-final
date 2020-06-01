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

    public function test(Request $request){
        $movies = Movie::all();
        foreach($movies as $movie){
            $genre_ids = [];
            $genre0 = $movie->genres0;
            array_push($genre_ids, Genre::where('name', $genre0)->first()->id);
//            $movie->genres()->sync(Genre::where('name', $genre0)->pluck('id'));

            if ($movie->genres1){
                $genre1 = $movie->genres1;
                array_push($genre_ids, Genre::where('name', $genre1)->first()->id);
//                $movie->genres()->sync(Genre::where('name', $genre1)->pluck('id'));
            }
            if ($movie->genres2){
                $genre2 = $movie->genres2;
                array_push($genre_ids, Genre::where('name', $genre2)->first()->id);
//                $movie->genres()->sync(Genre::where('name', $genre2)->pluck('id'));
            }
//            $movie->length = explode(" ", $movie->length1)[0];
//            dd($genre_ids);
            $movie->genres()->sync($genre_ids);
            $movie->save();
        }
    }
}
