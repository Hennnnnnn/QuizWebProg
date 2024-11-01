<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';
    protected $guarded = ['id'];

    public function user()
    {
        return $this->belongsTo(User::class,  'user_id');
    }
    public function mscategory()
    {
        return $this->belongsTo(mscategory::class, 'id');
    }
}
