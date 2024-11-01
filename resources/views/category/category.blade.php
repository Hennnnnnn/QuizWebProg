@extends('layout.layout')
@section('main-content')
    <h1 class="text-center py-3">{{ $title }}</h1>

    @foreach ($category_post as $p)
        <div class="container-fluid">
            <div class="container-fluid d-flex d-column gap-3 mb-2">
                <div class="col-md-4 mb-2">
                    <img src={{ asset('https://img.freepik.com/free-photo/back-shot-streamer-man-playing-powerful-computer-shooter-video-game-tournament-talking-with-multiple-players-into-headphones_482257-559.jpg?t=st=1730380643~exp=1730384243~hmac=5d87d70fb1a07db46c5da8da4aa066cf24f28d769a9ea8c42fd3a7db99eaa164&w=1380') }}
                        class="img-fluid rounded-5" style="width: 100%; height: 250px; object-fit: cover" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body d-flex flex-column h-100">
                        <h5 class="card-title text-tuncrate">{{ $p->title }}</h5>
                        <p class="small">{{ $p->created_at }} | by: {{ $p->user->name }} | Likes : {{ $p->likes }}</p>
                        <p class="card-text text-tuncrate">{{ $p->slug }}</p>
                        <div class="text-end mt-auto">
                            <a href={{ route('readmore', ['post_id' => $p->id]) }} class="btn btn-primary rounded-pill">Read
                                More...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endsection
