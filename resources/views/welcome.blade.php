<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }
            a.google {background: #c32f10;    color: #fff;}
            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            
            <div class="content">
                <div class="title m-b-md">
            
                </div>
                <div style="clear:both; height: 100px;"> </div>

                <a class="google btn" href="{{ url('glogin') }}"> Download images from google drive  </a>
                <div class="links" style="height: 839px;overflow-y: auto;">
                    <table>
                        
                        <tr>
                        <tr>File</tr>
                        <tr>File size</tr>
                        <tr>Download url</tr>
                        <tr>Mime Type</tr>
                        <tr>User</tr>
                        </tr>
                    @if (count($images))
                                {{-- */$i=0;/* --}}
                                {{-- */$class='';/* --}}
                                @foreach($images as $image)
                                <tr>
                                    <td><img src="<?php echo asset("/storage/app/$image->file")?>" width="60" height="60"></img></td>
                                    <td>{{ $image->file_size }}</td>
                                    <td>{{ $image->download_url }}</td>
                                    <td>{{ $image->mimetype }}</td>
                                    <td>{{ $image->user_email }}</td>
                                </tr>
                                
                                
                                @endforeach
                                
    @endif   
    </table>
                </div>
            </div>
        </div>
    </body>
</html>
