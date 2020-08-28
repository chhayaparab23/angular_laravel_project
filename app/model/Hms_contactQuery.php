<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_contactQuery extends Model
{
    protected $table = "hms_contact_queries";
    protected $primaryKey = "id";
    protected $fillable = ['name','email','contact_no','message'];
}
