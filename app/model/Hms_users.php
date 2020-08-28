<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_users extends Model
{
    protected $table = "hms_users";
    protected $primaryKey = "id";
    protected $fillable = ['name','email','mobile_no','password',
    'status'];
}
