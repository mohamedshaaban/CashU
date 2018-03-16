<?php

namespace App\Http\Controllers;

use App\Providers\GoogleDriveAdapter;
use App\Providers\GoogleDriveServiceProvider;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
//use Symfony\Component\HttpFoundation\Session\Storage;
//use Symfony\Component\HttpFoundation\Tests\Session\Storage;
use Illuminate\Support\Facades\Storage;
use App\Models\User_Uploads;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function list_all(Request $request)
    {
        $dir = '/';
        $recursive = true; // Get subdirectories also?
        $contents = collect(Storage::cloud()->listContents($dir, $recursive));
        //return $contents->where('type', '=', 'dir'); // directories
        $files =  $contents->where('type', '=', 'file'); // files

        foreach ($files as $file)
        {
//get file name            
                $filename = $file['filename'].'.'.$file['extension'];
            
               
//             
                
            $dir = '/';
        $recursive = true; 
        //get file contents
        $contents = collect(Storage::cloud()->listContents($dir, $recursive));
        $file = $contents
            ->where('type', '=', 'file')
            ->where('filename', '=', pathinfo($filename, PATHINFO_FILENAME))
            ->where('extension', '=', pathinfo($filename, PATHINFO_EXTENSION))
            ->first(); // there can be duplicate file names!

        //return $file; // array with file info
//get file data to append them to file in the locall
        $rawData = Storage::cloud()->get($file['path']);
        Storage::disk('local')->put($filename, $rawData);
        //Object fom user uploads to save file data in Db
         $user_file = new User_Uploads();
                $user_file->file =$filename;
                $user_file->type ='file';
                $user_file->file_size = $file['size'];
                $user_file->mimetype=$file['mimetype'];
                $user_file->download_url="https://www.googleapis.com/drive/v2/files/".$file['path']."\"";
                
                $user_file->save();
        $images = User_Uploads::all();
        
            

        }
        return view('welcome',array('images'=>$images));
    }
    public function listimgs()
    {
     $images = User_Uploads::all();   
             return view('welcome',array('images'=>$images));
    }

   
}
