<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Hms_roomBookingRequest extends Model
{
    protected $table = "hms_room_booking_requests";
    protected $primaryKey = "id";
    protected $fillable = ['name','email','mobile_no','address','from_date',
    'to_date','no_of_member','no_of_rooms','room_type','status'];
}
