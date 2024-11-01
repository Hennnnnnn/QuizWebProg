<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get("/", [HomeController::class, "index"])->name("home");

Route::get("/aboutus", function() {
    return view('aboutUs.aboutus');
})->name('aboutus');


Route::prefix('writers')->group(function() {
    Route::get('/', [WriterController::class, 'index'])->name('writers.index');
    Route::get('/{id}', [WriterController::class, 'info'])->name('writers.info');
});

Route::get('/readmore/{post_id}', [HomeController::class, 'readmore'])->name('readmore');

Route::get('/category/{category_id}', [CategoryController::class,'index'])->name('category');

Route::get('/popular', [PopularController::class, 'index'])->name('popular.index');
