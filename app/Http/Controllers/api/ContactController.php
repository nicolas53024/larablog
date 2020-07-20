<?php

namespace App\Http\Controllers\api;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreContactPost;
use Illuminate\Support\Facades\Validator;

class ContactController extends ApiResponseController
{
    public function store(Request $request){ 
        $validator = Validator::make($request->all(), StoreContactPost::myRules());
        
        if($validator->fails()){
            return $this->errorResponse($validator->errors());
        }else{
            Contact::create($validator->validated());
            return $this->sucessResponse("contact created");
        }
    }
}
