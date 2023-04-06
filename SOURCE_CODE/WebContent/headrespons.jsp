<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #0000ff;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.backtag{
float:right;
margin-right:50px;
font-size:15px;
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:blue; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: blue;
}

a{
  background-color: #f44336;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:8px;
}

</style>

</head>
<body>

<!-- <ul>

<li><a href="ownermainpage.jsp">Logout</a></li>

</ul>
 -->
<div class="backtag">
<a href="headmainpage.jsp">Back</a>
</div>

<br>
<center>
<div class="myDiv2">
Head Office Response
</div>


<%

//String emails=session.getAttribute("emailkey").toString();
//String ipadds=session.getAttribute("ipaddkey").toString();
//String ipadds="";
%>



<br><br><br>
<table>
<!-- <th>Pharmacyname</th> -->
<th>Username</th>
<th>Ipaddress</th>
<th>Filename</th>
<th>Filekey</th>
<th>Category</th>
<th>Priority</th>
<th>Remarks</th>
<th>Reject</th>

<%

String idlist="";
String fnamelist="";
String fkeylist="";
String encryptlist="";
String categlist="";
String priorlist="";
String unamelist="";
String ipaddlist="";


%>
<%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>


<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `ipspoof`.`request`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
		
		idlist=rp.getString(1);
		fnamelist=rp.getString(2);
		fkeylist=rp.getString(3);		
		categlist=rp.getString(4);
		priorlist=rp.getString(5);
		unamelist=rp.getString(6);
		ipaddlist=rp.getString(7);

	%>
	
	 <tr>     
	 <td><%=unamelist %></td>
	 <td><%=ipaddlist %></td>                       
      <td><%=fnamelist %></td>
      <td><%=fkeylist %></td>
      <%-- <td><%=encryptlist %> </td> --%>
      <td><%=categlist %> </td>      
      <td><%=priorlist %> </td>
      <td><a href="headresponsjava.jsp?emaill=<%=unamelist %>&&ipaddl=<%=ipaddlist %>&&fnamel=<%=fnamelist%>&&fkeyl=<%=fkeylist%>&&fcategl=<%=categlist%>&&fpriorl=<%=priorlist%>&&fkey=<%=t6%>">Accept</a></td>
        <td><a href="reject.jsp?id=<%=rp.getString(1) %>>emaill=<%=unamelist %>&&ipaddl=<%=ipaddlist %>&&fnamel=<%=fnamelist%>&&fkeyl=<%=fkeylist%>&&fcategl=<%=categlist%>&&fpriorl=<%=priorlist%>">Reject</a></td>
       </tr>
				
	<%
	}		
	%> 
 
</table>

</center>


</body>
</html>