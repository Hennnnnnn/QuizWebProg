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
