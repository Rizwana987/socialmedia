<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 10px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            border: 2px solid #333;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .registration-success {
            text-align: center;
            margin-bottom: 20px;
            color: green;
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Registration Details</h2>
    <div class="registration-success">
        Registration successful!
    </div>
    <table>
        <tr>
            <th>Full Name</th>
            <th>Age</th>
            <th>Username</th>
            <th>Password</th>
            <th>Gender</th>
            <th>Phone Number</th>
            <th>Dance Style</th>
        </tr>
        <% 
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "karimun");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student");
            while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("fname") %></td>
                    <td><%= rs.getInt("age") %></td>
                    <td><%= rs.getString("username") %></td>
                    <td><%= rs.getString("password") %></td>
                    <td><%= rs.getString("gender") %></td>
                    <td><%= rs.getString("phno") %></td>
                    <td><%= rs.getString("dance_style") %></td>
                </tr>
                <%
            }
            con.close();
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </table>
    <div class="login-link">
       <a href="login.html" style="text-decoration: none; color: #333; background-color: #ddd; padding: 10px 20px; border-radius: 5px;">Click here to login</a>
    </div>
</body>
</html>


