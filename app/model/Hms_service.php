<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_service extends Model
{
    protected $table = "hms_services";
    protected $primaryKey = "id";
    protected $fillable = ['title','image','description'];
}
