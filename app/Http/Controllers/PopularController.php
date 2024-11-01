<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PopularController extends Controller
{
    public function index(){
        $popular_post = Post::orderBy("likes", "desc")->paginate(3);
        return view('popular.popular', compact('popular_post'));
    }
}
