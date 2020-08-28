<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_subscribeUsers extends Model
{
    protected $table = "hms_subscribe_users";
    protected $primaryKey = "id";
    protected $fillable = ['email']; 

}
