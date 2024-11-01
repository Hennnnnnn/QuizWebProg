@extends('layout.layout')
@section('main-content')
    <div class="container mb-5">
        <h1 class="text-start py-3">{{ $title }}</h1>

        <div class="container d-flex flex-column justify-content-center align-items-center text-center m-0 p-0">
            <div class="rounded-5" style="max-height: 500px; overflow: hidden; width: 100%;">
                <img src="https://img.freepik.com/free-photo/back-shot-streamer-man-playing-powerful-computer-shooter-video-game-tournament-talking-with-multiple-players-into-headphones_482257-559.jpg?t=st=1730380643~exp=1730384243~hmac=5d87d70fb1a07db46c5da8da4aa066cf24f28d769a9ea8c42fd3a7db99eaa164&w=1380"
                    alt="" class="img-fluid rounded-5" style="width: 100%; height: auto;">
            </div>
            <div class="container text-start mt-3">
                <p class="small">{{ $posts->created_at }} | by : {{ $posts->user->name }}</p>
                <p class="fs-5">{{ $posts->description }}</p>
            </div>
        </div>
    </div>
@endsection
