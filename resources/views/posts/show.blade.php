@extends('layouts.app')

@section('content')

<a href="/posts" class="btn btn-light">Go Back</a>
<h1>{{$post->title}}</h1>

<img style="width:100%;" src="/storage/cover_image/{{$post->cover_image}}"></a>

           <div>
               {!! $post->body !!}
           </div>
           <small>Written on {{$post->created_at}}</small>
           <hr>
           <div class="row">
                @if(!Auth::guest())
                @if(Auth::user()->id == $post->user_id)
                    <div class="col">
                         <a href="/posts/{{$post->id}}/edit" class="btn btn-secondary">Edit</a>
                    </div>
                    <div class="col">
                        {!! Form::open(['action' => ['PostController@destroy', $post->id] , 'method'=> 'POST', 'class'=>'pull-right'])!!}
                        {{Form::hidden('_method','DELETE')}}
                        {{Form::submit('Delete',['class'=> 'btn btn-danger float-right'])}}
                    {!! Form::close() !!}
                    </div>



                @endif
            @endif
           </div>

        @endsection
