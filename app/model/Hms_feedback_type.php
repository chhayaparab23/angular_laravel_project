<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_feedback_type extends Model
{
    protected $table = "hms_feedback_types";
    protected $primaryKey = "id";
    protected $fillable = ['title','status'];
}
