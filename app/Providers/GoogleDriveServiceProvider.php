<?php
namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use Symfony\Component\HttpFoundation\Session\Session;
class GoogleDriveServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    //Used to download images from google drive
    public function boot()
    {


        \Storage::extend('google', function($app, $config) {
            $client = new \Google_Client();
            $session = new Session();
            //Set client id from .env file
            $client->setClientId($config['clientId']);
            //Set client secert from .env file
            $client->setClientSecret($config['clientSecret']);
            //Set refresh token
            $client->refreshToken($session->get('Refresh_token'));
            $service = new \Google_Service_Drive($client);
            //Set folder id usually null to download all files in google drive or put folder id required to be downloaded
            $adapter = new GoogleDriveAdapter($service, $config['folderId']);
            return new \League\Flysystem\Filesystem($adapter);
        });
    }
    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}