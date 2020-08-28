<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_room_type extends Model
{
    protected $table = "hms_room_types";
    protected $primaryKey = "id";
    protected $fillable = ['title','status'];
}
