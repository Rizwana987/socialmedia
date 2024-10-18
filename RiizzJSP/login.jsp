<%@ page import="java.sql.*" %>
<%
try {
    String un =request.getParameter("suname");
    String p = request.getParameter("pwd");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "karimun");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM student");
    int flag=0;
    while (rs.next()) {
        if(un.equals(rs.getString(3)) && p.equals(rs.getString(4)))
        {
            flag=1;
            break;
        }
    }
    if(flag==1)
    {
        //out.print("<h3>Login Successful<h3>");
%>
	<jsp:forward page="welcome.jsp">
		<jsp:param name="suname" value="<%=un%>" />
	</jsp:forward>
<%

    }
    else {
        out.print("<h3>Invalid Credentials please relogin again<h3>");
out.print("<br>");
%>
       <jsp:include page="login.html"/>
<%
    }
    con.close();
}
catch (Exception e) {
    // Handle exceptions
    out.println("<h3>Error: " + e.getMessage() + "</h3>");
}
%>
