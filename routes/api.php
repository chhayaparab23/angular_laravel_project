<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//URL::forceRootUrl('http://127.0.0.1/angular-laravel-project-2/');

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

//Route::get('test','FrontApi@testing');
Route::post('test','FrontApi@testing');
Route::post('contact_form','FrontApi@save_contact_query');
Route::post('subscribe','FrontApi@subscribe_user');
Route::get('get_services','FrontApi@get_service');
Route::post('booking_request','FrontApi@room_booking_request');
Route::get('get_room_type','FrontApi@get_room_type');
Route::get('get_feedback_type','FrontApi@get_feedback_type');
Route::post('feedback_request','FrontApi@send_feedback_request');
Route::post('signup','AuthController@signup');
Route::post('login','AuthController@login');
Route::post('update_profile','AuthController@update_profile');

