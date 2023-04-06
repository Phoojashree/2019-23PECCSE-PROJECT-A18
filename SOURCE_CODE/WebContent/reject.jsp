<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%


String id=request.getParameter("id");



try{
	Connection con=Dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("DELETE FROM `ipspoof`.`request` WHERE id='"+id+"' ");
	response.sendRedirect("headrespons.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>