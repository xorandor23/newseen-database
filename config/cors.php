<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Cross-Origin Resource Sharing (CORS) Configuration
    |--------------------------------------------------------------------------
    |
    | Here you may configure your settings for cross-origin resource sharing
    | or "CORS". This determines what cross-origin operations may execute
    | in web browsers. You are free to adjust these settings as needed.
    |
    | To learn more: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    |
    */

    // config/cors.php

    'paths' => ['api/*', 'sanctum/csrf-cookie', 'login', 'register'],

    'allowed_methods' => ['*'],

    // JANGAN GUNAKAN ['*'] jika supports_credentials adalah true
    'allowed_origins' => ['http://localhost:5173'],

    'allowed_headers' => ['*'],

    'supports_credentials' => true, // Ini sudah benar
];
