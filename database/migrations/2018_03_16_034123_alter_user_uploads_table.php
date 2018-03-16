<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterUserUploadsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
                Schema::table('user_uploads', function (Blueprint $table) {
            /*
             * @see https://github.com/milon/barcode
             */
            $table->string('file_size')->nullable();
            $table->string('download_url')->nullable();
            $table->string('mimetype')->nullable();
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
         Schema::table('user_uploads', function (Blueprint $table) {
            $table->dropColumn([
                'file_size',
                'download_url',
                'mimetype'
            ]);
        });
    }
}
