<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    'google' => [
        'app_name' => 'OneAll-Site-511543-2',
        'client_id' => '34846673084-6ge97kbth505i74mcko6vbg0j5jh5rsr.apps.googleusercontent.com',
        'client_secret' => 'YrTEk9Ejyg792lIdkNI_vnsC',
        'api_key' => 'AIzaSyAaEm8KYaLdVnEKqSPLbWUHHx5gvBmVLaA'
    ],


];
