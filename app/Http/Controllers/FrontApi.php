<?php

namespace App\Http\Controllers;
use Validator;
use App\model\Hms_contactQuery;
use App\model\Hms_subscribeUsers;
use App\model\Hms_service;
use App\model\Hms_roomBookingRequest;
use App\model\Hms_room_type;
use App\model\Hms_feedback_type;
use App\model\Hms_feedbackRequest;

use Illuminate\Http\Request;

class FrontApi extends Controller
{
    public function testing(Request $request)
    {
        print_r($request->all());
    }

    public function save_contact_query(Request $request)
    {        
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required',
            'mobile_no' => 'required',
            'message' => 'required'
            ]);

            if($validator->passes())
            {                
                $obj = new Hms_contactQuery();
                $obj->name = $request->name;
                $obj->email = $request->email;
                $obj->mobile_no = $request->mobile_no;
                $obj->message = $request->message;
                $obj->save();
                $arr = array('status'=>'true','message'=>'Contact Query Successfully Sent');
            }
            else
            {                
                $arr = array('status'=>'false','message'=>$validator->errors()->all());
            }
            echo json_encode($arr);
    }

    public function subscribe_user(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required'
        ]);

        if($validator->passes())
        {
            $check_status = Hms_subscribeUsers::where('email',$request->email)->get()->toArray();
            if($check_status)
            {
                $arr = array('status'=>'false', 'message'=>'Email already exists');
            }
            else
            {
                $sub_obj = new Hms_subscribeUsers();
                $sub_obj->email = $request->email;
                $sub_obj->save();
                $arr = array('status'=>'true','message'=>'Thank You for Subscribe');
            }
        }
        else
        {
            $arr = array('status'=>'false','message'=>$validator->errors()->all());
        }
        echo json_encode($arr);
    }

    public function get_service()
    {
        $services = Hms_service::get()->toArray();
        if($services)
        {
            $arr = array('status'=>'true','message'=>'success','data'=>$services);            
        }
        else
        {
            $arr = array('status'=>'false','message'=>'Service not found');
        }
        echo json_encode($arr);
    }

    public function room_booking_request(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required',
            'mobile_no' => 'required'            
            ]);

        if($validator->passes())
        {
            $booking_req = new Hms_roomBookingRequest();
            $booking_req->name = $request->name;
            $booking_req->email = $request->email;
            $booking_req->mobile_no = $request->mobile_no;
            $booking_req->address = $request->address;

            $booking_req->from_date = $request->from_date;
            $booking_req->to_date = $request->to_date;
            $booking_req->no_of_member = $request->no_of_member;
            $booking_req->room_type = $request->room_type;
            $booking_req->no_of_rooms = $request->no_of_rooms;
            $booking_req->status = 0;
            $booking_req->save();
            $arr = array('status'=>'true','message'=>'Booking Request Sent Successfully...!!! ');
        }
        else
        {
            $arr = array('status'=>'false', 'message' => $validator->errors()->all());
        }
        echo json_encode($arr);
    }

    public function get_room_type()
    {
        $room_type = Hms_room_type::select(['id','title','status'])->get()->toArray();
        if($room_type)
        {
            $arr = array('status'=>'true','message'=>'success','data'=>$room_type);            
        }
        else
        {
            $arr = array('status'=>'false','message'=>'room type not found');
        }
        echo json_encode($arr);
    }

    public function get_feedback_type()
    {
        $feedback_type = Hms_feedback_type::select(['id','title','status'])->get()->toArray();
        if($feedback_type)
        {
            $arr = array('status'=>'true','message'=>'success','data'=>$feedback_type);            
        }
        else
        {
            $arr = array('status'=>'false','message'=>'Feedback type not found');
        }
        echo json_encode($arr);
    }

    public function send_feedback_request(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required',
            'mobile_no' => 'required'            
            ]);

        if($validator->passes())
        {
            $feedback = new Hms_feedbackRequest();
            $feedback->name = $request->name;
            $feedback->email = $request->email;
            $feedback->mobile_no = $request->mobile_no;
            
            $feedback->feedback_type = $request->feedback_type;            
            $feedback->message = $request->message;
            $feedback->save();
            $arr = array('status'=>'true','message'=>'Feedback Sent Successfully...!!! ');
        }
        else
        {
            $arr = array('status'=>'false', 'message' => $validator->errors()->all());
        }
        echo json_encode($arr);
    }
}
