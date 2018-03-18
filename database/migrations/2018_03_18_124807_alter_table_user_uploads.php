<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterTableUserUploads extends Migration
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
            $table->string('user_email')->nullable();

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
                'user_email'
            ]);
        });
    }
}

