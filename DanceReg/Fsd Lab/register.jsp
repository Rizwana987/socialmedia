<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Details</title>
</head>
<body>
    <h2>Registration Details</h2>
    <% 
    try {
        String rno = request.getParameter("rno");
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String password = request.getParameter("password");
        float cgpa = Float.parseFloat(request.getParameter("cgpa"));
        String gender = request.getParameter("gender");
        String section = request.getParameter("section");
        String[] languages = request.getParameterValues("languages");
        String address = request.getParameter("address");

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "karimun");

        String qry = "INSERT INTO fsd2 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(qry);
        pst.setString(1, rno);
        pst.setString(2, name);
        pst.setString(3, mail);
        pst.setString(4, password);
        pst.setFloat(5, cgpa);
        pst.setString(6, gender);
        pst.setString(7, section);
        pst.setString(8, String.join(",", languages));
        pst.setString(9, address);

        pst.executeUpdate();
        out.print("<div class='registration-success'>Registration successful!</div>");

        con.close();
    } catch (Exception e) {
        out.print("<div class='registration-error'>" + e.getMessage() + "</div>");
    }
    %>
</body>
</html>

