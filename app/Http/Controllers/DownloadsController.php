<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;


class DownloadsController extends Controller
{
    public function download($file_name) {
        $file_path = public_path('/uploads/'.$file_name);
        // return $file_path;
        return response()->download($file_path);
      }
}
