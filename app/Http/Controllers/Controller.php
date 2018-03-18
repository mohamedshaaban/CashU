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
use Symfony\Component\HttpFoundation\Session\Session;

//use Symfony\Component\HttpFoundation\Session\Storage;
//use Symfony\Component\HttpFoundation\Tests\Session\Storage;
use Illuminate\Support\Facades\Storage;
use App\Models\User_Uploads;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    //Download all images from google drive to the local
    public function download(Request $request)
    {
        $dir = '/';
        $recursive = true; // Get subdirectories also?
        //Getting all contents from directory
        $contents = collect(Storage::cloud()->listContents($dir, $recursive));

        //return $contents->where('type', '=', 'dir'); // directories
        $files = $contents->where('type', '=', 'file'); // files

        foreach ($files as $file) {
            $session = new Session();

            //Setting file with extension
            $filename = $file['filename'] . '.' . $file['extension'];
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
            //set file name
            $user_file->file = $filename;
            //set file type
            $user_file->type = 'file';
            //set file size
            $user_file->file_size = $file['size'];
            //set file mime type
            $user_file->mimetype = $file['mimetype'];
            //set user email from session
            $user_file->user_email = $session->get('email');
            //set file download url
            $user_file->download_url = "https://www.googleapis.com/drive/v2/files/" . $file['path'] . "\"";
            //save it in DB
            $user_file->save();
        }
        //Retieve all images from DB
        $images = User_Uploads::all();
        return view('welcome', array('images' => $images));
    }

    public function listimgs()
    {
        //Listing all images in DB
        $images = User_Uploads::all();
        return view('welcome', array('images' => $images));
    }


}
