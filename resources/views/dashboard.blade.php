@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <a href="/posts/create" class="btn btn-primary mb-2">Create Post</a>
                        @if(count($posts) > 0 )
                         <table class="table table-striped small">
                             <thead>
                                 <td>Your Post</td>

                             </thead>
                             @foreach ($posts as $post)
                                <tr>
                                    <td>{{$post->title}}</td>
                                <td><a href="/posts/{{$post->id}}/edit" class="btn btn-secondary">Edit</a></td>
                                    <td>
                                            {!! Form::open(['action' => ['PostController@destroy', $post->id] , 'method'=> 'POST', 'class'=>'pull-right'])!!}
                                            {{Form::hidden('_method','DELETE')}}
                                            {{Form::submit('Delete',['class'=> 'btn btn-danger'])}}
                                        {!! Form::close() !!}
                                    </td>
                                </tr>
                             @endforeach
                         </table>
                         @else
                         <p>You have no posts</p>
                         @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
