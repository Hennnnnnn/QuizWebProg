<?php

namespace App\Http\Controllers;

use App\Models\mscategory;
use App\Models\Post;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index($category_id)
    {
        $category_post = Post::with('mscategory')->where('category_id', $category_id)->get();
        $title = $category_id == 1 ? 'Interactive Multimedia' : 'Software Engineering';
        return view('category.category', compact('category_post', 'title'));
    }
}
