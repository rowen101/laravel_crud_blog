<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //Table Name
    protected $tabel ='posts';
    //Primary key
    public $pirmaryKey='id';
    //TimeStamp
    public $timestamps = true;

    //relation
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
