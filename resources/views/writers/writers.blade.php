@extends('layout.layout')
@section('main-content')
    <div class="container-fluid p-4">
        <h1 class="p-5">Our Writers: </h1>
        <div class="row d-flex">
            @foreach ($user as $u)
                <div class="col-md-4 col-ms-6 mb-5 text-center">
                    <a href={{ route('writers.info', ['id' => $u->id]) }} class="text-decoration-none text-dark">
                        <img class="rounded-circle" src="{{ asset('Little Drawings.jpeg') }}" alt=""
                            style="width: 250px">
                        <div class="mt-3">
                            <div class="fw-bold">{{ $u->name }}</div>
                            <div>Spesialis {{ $u->specialist }}</div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection
