<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $hidden = ["created_at", "updated_at"];
    protected $guarded = ['created_at', 'updated_at', 'id'];

    public function genres() {
        return $this->belongsToMany("App\Genre");
    }

    public function getLengthAttribute ($value){
        return $value." min";
    }
}
