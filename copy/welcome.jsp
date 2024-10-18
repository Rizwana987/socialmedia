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
            justify-content: space-between; /* Align items to the start and end of the frame */
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
            transition: background-color 0.3s; /* Smooth transition on hover */
            margin-left: 5px; /* Reduce left margin */
        }

        #links a:first-child {
            margin-left: 0; /* No left margin for first link */
        }

        #links a:hover {
            background-color: #333; /* Dark background color on hover */
            text-decoration: none;
        }

        #content {
            width: calc(100% - 40px); /* Adjusted width */
            padding: 20px;
            text-align: center;
            box-sizing: border-box; /* Include padding in width */
        }

        iframe {
            width: 100%;
            height: calc(100vh - 200px); /* Adjusted height */
            border: none; /* Remove border */
        }

        #welcome-message {
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #fff; /* White text color */
        }
    </style>
</head>
<body>


    <div id="title-frame">
        <div id="title"><strong>Welcome to Our Dance Academy</strong></div>
    </div>

    <div id="links-frame">
        <div id="welcome-message">Welcome man, <%= session.getAttribute("username") %></div>
        <div id="links">
	<%
	    String uname = (String)session.getAttribute("username");
	    if(uname!=null)
            {
        %>
            		<a href="#" onclick="loadContent('content.html')">About Us</a>
            		<a href="#" onclick="loadContent('schedules.html')">Schedules</a>
            		<a href="#" onclick="loadContent('trainers.html')">Trainers</a>
            		<a href="logout.jsp">Logout</a>
            <%
             }
	     else
 	     {
	     %>
			<jsp:include page="login.jsp"/>
 	<%
	     }
        %>
        </div>
    </div>

    <div id="content">
        <iframe id="content-frame" src="content.html"></iframe>
    </div>

    <script>
        function loadContent(page) {
            document.getElementById('content-frame').src = page;
        }
    </script>
</body>
</html>










