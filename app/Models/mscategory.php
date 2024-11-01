<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class mscategory extends Model
{
    protected $table = "mscategories";
    protected $guarded = ['id'];

    public function post()
    {
        return $this->hasMany(Post::class);
    }
}
