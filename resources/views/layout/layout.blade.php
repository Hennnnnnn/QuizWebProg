<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    @include('layout.custom.bootstrapcss')
    <style>
        body {
            background-color: #f0f4ef;
        }
    </style>
</head>

<body>
    @include('layout.navbar')

    @yield('main-content')

    @extends('layout.footer')

    @include('layout.custom.bootstrapjs')
</body>

</html>
