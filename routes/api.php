<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::resource('genres', 'Api\GenreController')->only('index');
Route::resource('movies', 'Api\MovieController')->only(['index', 'store']);

//Route::get('genres/{id}/movies', 'Api\GenreController@moviesOfGenre');
//Route::get('genres/amount', 'Api\GenreController@genresWithAmount');

//Route::get('movies/map', 'Api\MovieController@test');
//Route::get('movies/query/{query}', 'Api\MovieController@searchMovies');
