@extends('layout.layout')
@section('main-content')
    <div class="container-fluid">
        <h1 class="p-3">Popular</h1>
        <div class="card mb-3 border-0 g-2" style="background-color: #f0f4ef">
            <div class="row g-0">
                @foreach ($popular_post as $u)
                    <div class="col-md-4 mb-2">
                        <img src={{ asset('https://img.freepik.com/free-photo/back-shot-streamer-man-playing-powerful-computer-shooter-video-game-tournament-talking-with-multiple-players-into-headphones_482257-559.jpg?t=st=1730380643~exp=1730384243~hmac=5d87d70fb1a07db46c5da8da4aa066cf24f28d769a9ea8c42fd3a7db99eaa164&w=1380') }}
                            class="img-fluid rounded-5" style="width: 100%; height: 250px; object-fit: cover" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body d-flex flex-column h-100">
                            <h5 class="card-title text-tuncrate">{{ $u->title }}</h5>
                            <p class="small">{{ $u->created_at }} | by: {{ $u->user->name }} | Likes : {{ $u->likes }}
                            </p>
                            <p class="card-text text-tuncrate">{{ $u->slug }}</p>
                            <div class="text-end mt-auto">
                                <a href={{ route('readmore', ['post_id' => $u->id]) }}
                                    class="btn btn-primary rounded-pill">Read
                                    More...</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        {{ $popular_post->links() }}

    </div>
@endsection
