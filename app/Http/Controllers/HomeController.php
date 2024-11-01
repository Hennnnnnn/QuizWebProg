<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return view("home.home", compact('posts'));
    }
    public function readmore($post_id){
        $posts = Post::find($post_id);
        $title = $posts->category_id == 1 ? 'Interactive Multimedia' : 'Software Engineering';
        return view('home.read', compact('posts', 'title'));
    }
}
