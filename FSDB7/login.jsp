<%@ page import="java.sql.*" %>
<%
try {
    String un = request.getParameter("suname");
    String p = request.getParameter("pwd");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "karimun");
    PreparedStatement pst = con.prepareStatement("SELECT * FROM student WHERE username=? AND password=?");
    pst.setString(1, un);
    pst.setString(2, p);
    ResultSet rs = pst.executeQuery();

    if (rs.next()) {
        // Set the username in the session
        session.setAttribute("username", un);
%>
<jsp:forward page="welcome.jsp"></jsp:forward>
<%
    } else {
        out.print("<h3>Invalid Credentials, please relogin again</h3><br>");
%>
<jsp:include page="login.html"/>
<%
    }
    con.close();
} catch (Exception e) {
    out.println("<h3>Error: " + e.getMessage() + "</h3>");
}
%>





