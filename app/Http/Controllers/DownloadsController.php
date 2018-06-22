<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Storage;


class DownloadsController extends Controller
{
    public function download($file_name) {
        $file_path = storage_path('../public/uploads/'.$file_name);
        $file_path2 = storage_path('app/public/uploads/'.$file_name);
        // return $file_path;
        if(file_exists($file_path)) {
                return response()->download($file_path);
            }
            else
            {
                return response()->download($file_path2);
            }
            

        
      }
}
