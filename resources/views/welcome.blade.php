<!DOCTYPE html>
<html>
<head>
    <style>
        .button {
            background-color: #2d3748;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 4px;
            font-weight: bold;
        }
        .footer-text {
            font-size: 12px;
            color: #718096;
            margin-top: 20px;
        }
    </style>
</head>
<body style="font-family: sans-serif; color: #3d4852;">
    <h1>Hello, {{ $user->name }}!</h1>
    <p>Please click the button below to verify your email address.</p>

    <div style="text-align: center; margin: 30px 0;">
        <a href="{{ $url }}" class="button" style="color: #ffffff;">Verify Email Address</a>
    </div>

    <p>If you did not create an account, no further action is required.</p>

    <hr>

    <p class="footer-text">
        If you're having trouble clicking the "Verify Email Address" button, copy and paste the URL below into your web browser:
        <br>
        <a href="{{ $url }}">{{ $url }}</a>
    </p>
</body>
</html>
