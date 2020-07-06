@extends('layouts.app')

@section('content')
    <h1>Изучаем язык HTML</h1>
    <p>Язык <strong>HTML</strong> предназначен для создания содержимого
        Web-страниц.</p>
    @foreach ($categories as $category)

        @if ($category->children->where('published', 1)->count())
            <li class="dropdown">
                <a href="{{url("/blog/category/$category->slug")}}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    {{$category->title}} <span class="caret"></span>
                </a>

        @else
            <li>
                <a href="{{url("/blog/category/$category->slug")}}">{{$category->title}}</a>
                @endif
            </li>
            @endforeach
@endsection
