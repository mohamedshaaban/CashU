<?php

namespace App\Models;

use App\Attendize\Utils;
use Illuminate\Database\Eloquent\SoftDeletes;
use DB;
use Illuminate\Database\Eloquent\Model;

class User_Uploads extends Model
{
        public $table = "user_uploads";

    /**
     * The attributes that are mass assignable.
     *
     * @var array $fillable
     */
    protected $fillable = [
        'file',
        'type',
        'file_size',
        'download_url',
        'mimetype'
    ];

}
