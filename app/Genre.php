<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    protected $hidden = ["created_at", "updated_at", "pivot"];
    protected $guarded = ['created_at', 'updated_at', 'id'];

    protected $appends = [
        'movieCount'
    ];

    public function movies() {
        return $this->belongsToMany("App\Movie");
    }

    public function getMovieCountAttribute() {
        return $this->movies()->count();
    }
}
