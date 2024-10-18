
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="1;url=home.html"> <!-- Redirect to home.html after 5 seconds -->
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff; /* Light background color */
            color: #333; /* Dark text color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        .message {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div>
	session.removeAttribute("username");
        <div class="message">Logout successful. Redirecting to home page...</div>
        <!-- You can add a spinner or loading animation here if needed -->
    </div>
</body>
</html>
