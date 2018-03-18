<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Symfony\Component\HttpFoundation\Session\Session;

class UserController extends Controller
{

    public function googleLogin(Request $request)  {
        //set redirect url after login

        $google_redirect_url = route('glogin');
        //Create object from google client
        $gClient = new \Google_Client();
        //set application name
        $gClient->setApplicationName(config('services.google.app_name'));
        //set client id created google console
        $gClient->setClientId(config('services.google.client_id'));
        //set client secert created google console
        $gClient->setClientSecret(config('services.google.client_secret'));
        $gClient->setRedirectUri($google_redirect_url);
        //set Api key created google console
        $gClient->setDeveloperKey(config('services.google.api_key'));
        //Set scopes for google api
        $gClient->setScopes(array(
            'https://www.googleapis.com/auth/plus.me',
            'https://www.googleapis.com/auth/userinfo.email',
            'https://www.googleapis.com/auth/userinfo.profile',
            'https://www.googleapis.com/auth/drive',
        ));
        $google_oauthV2 = new \Google_Service_Oauth2($gClient);
        //check if code is already passed from view or not
        if ($request->get('code')){
            //authenticate user using code
            $gClient->authenticate($request->get('code'));
            //set access token
            $request->session()->put('token', $gClient->getAccessToken());
        }
        //check if token already passed or not
        if ($request->session()->get('token'))
        {
            //set token
            $gClient->setAccessToken($request->session()->get('token'));
        }
        //set token after login
        $session = new Session();
        $session->set('Refresh_token', $gClient->getAccessToken()['access_token']);
        if ($gClient->getAccessToken())
        {
            //For logged in user, get details from google using access token
            $guser = $google_oauthV2->userinfo->get();
            //set session with user email
            $session->set('email',  $guser['email']);

            return redirect()->route('download');
        } else
        {

            //For Guest user, get google login url
            $authUrl = $gClient->createAuthUrl();
            //redirect to download page
            return redirect()->to($authUrl);
        }
    }
}