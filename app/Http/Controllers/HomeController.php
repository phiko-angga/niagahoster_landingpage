<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use \App\Home;

class HomeController extends Controller
{

    public function __construct()
    {
    }

    public function index(Request $request) {
        return view('layout.app', [
                "product"        => Home::all(),
            ]
        );
    }
       
}
