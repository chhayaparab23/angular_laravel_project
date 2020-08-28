<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_feedbackRequest extends Model
{
    protected $table = "hms_feedback_requests";
    protected $primaryKey = "id";
    protected $fillable = ['name','email','mobile_no','feedback_type','message'];
}
