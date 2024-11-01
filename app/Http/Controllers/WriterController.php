<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class WriterController extends Controller
{
    public function index(){
        $user = User::all();
        return view('writers.writers', compact('user'));
    }

    public function info($id){
        $user = User::with('post')->find($id);
        // dd($user);
        return view('writers.info', compact('user'));
    }
}
