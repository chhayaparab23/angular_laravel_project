<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\model\Hms_users;

class AuthController extends Controller
{
    public function signup(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required',
            'name' => 'required',
            'password' => 'required'
        ]);
    
        if($validator->passes())
        {
            $check_status = Hms_users::where('email',$request->email)->get()->toArray();
            if($check_status)
            {
                $arr = array('status' => 'false', 'message' => 'Email already exists');
            }
            else
            {
                $new = new Hms_users();
                $new->name = $request->name;
                $new->email = $request->email;
                $new->mobile_no = $request->mobile_no;                
                $new->password = $request->password;                
                $new->save();
                $arr = array('status' => 'true', 'message' => 'Successfully Registered | Please login to continue...');
            }            
        }
        else
        {
            $arr = array('status' => 'false', 'message' => $validator->errors()->all());
        }
        echo json_encode($arr);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required',            
            'password' => 'required'
        ]);

        if($validator->passes())
        {
            $check_status = Hms_users::where('email',$request->email)->where('password',$request->password)
            ->get()->toArray();
            if($check_status)
            {
                $arr = array('status' => 'true', 'message' => 'success', 'data' => $check_status);
            }
            else
            {
                $arr = array('status' => 'false', 'message' => 'E-Mail and Password do not match');
            }
        }
        else
        {
            $arr = array('status' => 'false', 'message' => $validator->errors()->all());
        }
        echo json_encode($arr);
    }

    public function update_profile(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required',            
            'password' => 'required'
        ]);
        if($validator->passes())
        {
            $check_status = Hms_users::where('email',$request->email)->where('password',$request->password)
            ->get()->toArray();
            $update = new Hms_users();
            $update->name = $request->name;
            $update->email = $request->email;
            $update->mobile_no = $request->mobile_no; 
            $update->country = $request->country;
            $update->state = $request->state;
            $update->city = $request->city;
            $update->pin_code = $request->pin_code;               
            $update->password = $request->password;                
            $update->save();
            $arr = array('status' => 'true', 'message' => 'Profile Successfully Updated.');
        }
        else
        {
            $arr = array('status' => 'false', 'message' => $validator->errors()->all());
        }
        echo json_encode($arr);
    }
    
}
