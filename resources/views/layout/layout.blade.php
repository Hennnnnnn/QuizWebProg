<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>EduFun</title>
    <style>
        body {
            background-color: #f0f4ef;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-lg sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">EduFun</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link fw-bold {{ Route::currentRouteName() == 'home' ? 'active' : '' }}"
                            href="{{ route('home') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle fw-bold {{ Route::currentRouteName() == 'category' ? 'active' : '' }}"
                            href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href={{ route('category', ['category_id' => 1]) }}>Interactive
                                    Multimedia</a></li>
                            <li><a class="dropdown-item" href={{ route('category', ['category_id' => 2]) }}>Software
                                    Engineering</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fw-bold {{ Route::currentRouteName() == 'writers.index' ? 'active' : '' }}"
                            href={{ route('writers.index') }}>Writers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fw-bold {{ Route::currentRouteName() == 'aboutus' ? 'active' : '' }}"
                            href="{{ route('aboutus') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fw-bold {{ Route::currentRouteName() == 'popular.index' ? 'active' : '' }}"
                            href={{ route('popular.index') }}>Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    @yield('main-content')

    @if (Route::currentRouteName() == 'aboutus' || Route::currentRouteName() == 'writers.info')
        <footer class="text-center bg-dark py-3 m-0 fixed-bottom">
            <p class="text-light m-0">Edufun 2024 | Web Programming | Hendri Jonathan | 2602069690</p>
        </footer>
    @else
        <footer class="text-center bg-dark py-3 m-0">
            <p class="text-light m-0">Edufun 2024 | Web Programming | Hendri Jonathan | 2602069690</p>
        </footer>
    @endif

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>

</html>
