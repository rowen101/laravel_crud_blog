@extends('layouts.app')

@section('content')
    <h1>Post</h1>
    @if(count($posts) > 0)
        @foreach ($posts as $item)

            <div class="card mt-1">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                            <a href="posts/{{$item->id
                            }}">
                    <img style="width: 100%" src="/storage/cover_image/{{$item->cover_image}}"></a>
                    </div>
                    <div class="col-md-8 col-sm-8">
                        <a href="posts/{{$item->id
                          }}">
                            <h3>{{$item->title}}</h3></a>
                              <small>Written on {{$item->created_at}} by {{$item->user->name}}</small>
                    </div>
                </div>


            </div>
        @endforeach
        {{$posts->links()}}
    @else
    <p>No Post</p>
    @endif
@endsection
