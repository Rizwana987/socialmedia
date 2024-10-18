<%@ page import="java.sql.*" %>
<%

        int sid=Integer.parseInt(request.getParameter("sid"));
		String sname=request.getParameter("sname");
        String suname=request.getParameter("suname");
		String pwd=request.getParameter("pwd");
       String sgender=request.getParameter("sgender");
		String saddr=request.getParameter("saddr");
		long sphno=Long.parseLong(request.getParameter("sphno"));


       
        try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","karimun");
String qry = "insert into student values(?,?,?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(qry);
pst.setInt(1,sid);
pst.setString(2,sname);

pst.setString(3,suname);
pst.setString(4,pwd);
pst.setString(5,sgender);
pst.setString(6,saddr);
pst.setLong(7,sphno);


pst.executeUpdate();
out.print("<header>submitted successfully</header>");

out.print("<br><a href='login.html'>Click here to login </a>");
con.close();

}
catch (Exception e)
{
out.print(e);
}
%>