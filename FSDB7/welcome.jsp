<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our Dance Academy</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff; /* Light background color */
            color: #333; /* Dark text color */
            overflow: hidden; /* Hide the main scrollbar */
        }

        header {
            text-align: center;
            padding: 20px;
            background-color: #666; /* Dark background color */
            font-family: Arial, sans-serif;
            font-size: 24px;
            color: #fff; /* White text color */
        }

        #title-frame {
            width: 100%;
            height: 100px;
            border-bottom: 1px solid #ccc;
            background-color: #444; /* Slightly darker background color */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #title {
            font-size: 30px;
            color: #fff;
            font-family: 'Times New Roman', Times, serif;
            font-weight: 200; 
            text-align: center;
            padding: 10px;
        }

        #links-frame {
            width: calc(100% - 40px); /* Adjusted width */
            height: 50px;
            border-bottom: 1px solid #ccc;
            background-color: #222; /* Dark background for links frame */
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        #links {
            display: flex;
            align-items: center;
        }

        #links a {
            text-decoration: none;
            color: #fff; /* White text color for links */
            font-size: 16px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Change font */
            padding: 10px; /* Add padding for links */
            border-radius: 5px; /* Add border radius for links */
            border: 1px solid #fff; /* White border for links */
            margin-left: 10px; /* Add margin between links */
            transition: background-color 0.3s; /* Smooth transition on hover */
        }

        #links a:hover {
            background-color: #333; /* Dark background color on hover */
            text-decoration: none;
        }

        #welcome-message {
            color: #fff; /* White font color */
            margin-left: 20px; /* Adjusted margin */
        }

        #content {
            width: calc(100vw - 20px); /* Adjusted for scrollbar */
            padding: 20px;
            text-align: center;
            position: absolute;
            top: 150px;
            bottom: 0;
            overflow-y: hidden; /* Hide vertical scrollbar */
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none; /* Remove border */
            overflow-y: auto; /* Add vertical scrollbar for iframe content */
            overflow-x: hidden; /* Hide horizontal scrollbar for iframe content */
        }
    </style>
</head>
<body>
    <div id="title-frame">
        <div id="title"><strong>Welcome to Our Dance Academy</strong></div>
    </div>

    <div id="links-frame">
        <div id="welcome-message">Welcome, <%= session.getAttribute("username") %>!</div>
        <div id="links">
            <a href="home.html">Home</a>
            <a href="schedules.html">Schedules</a>
	    <a href="trainers.html">Trainers</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>

    <div id="content">
        <iframe src="content.html"></iframe>
    </div>
</body>
</html>









