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
<title>Hacker Request</title>

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
<a href="hackermainpage.jsp">Back</a>
</div>

<br>
<center>
<div class="myDiv2">
Staff Viewlist
</div>

<%

String idlist="";
String fnamelist="";
String fkeylist="";
String encryptlist="";
String categlist="";
String priorlist="";
String ipadds="";

String hidlist="";
String hfnamelist="";
String hfkeylist="";
String hencryptlist="";
String hcateglist="";
String hpriorlist="";
String hipadds="";
String hemails="";

%>

<%

String emails=session.getAttribute("emailkey").toString();
//String ipadds=session.getAttribute("ipaddkey").toString();

%>

<%

Connection d2 = Dbconn.create();
PreparedStatement p2 = d2.prepareStatement("SELECT * FROM `ipspoof`.`userregistertbl` where email='"+emails+"'");
ResultSet rp2 = p2.executeQuery();

	while (rp2.next()){
	
	/* idlist=rp.getString(1);
	fnamelist=rp.getString(2);
	fkeylist=rp.getString(3);
	encryptlist=rp.getString(4);
	categlist=rp.getString(5);
	priorlist=rp.getString(6); */
	ipadds=rp2.getString(6);
%>

<%
	}		
	%> 
 

<br><br><br>
<table>
<!-- <th>Pharmacyname</th>  -->
<th>Username</th>

<th>Filename</th>
<th>Filekey</th>
<th>Category</th>
<th>Priority</th>
<th>Remarks</th>




<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT id,filename,filekey,encrypt,categ,priority,encrypt FROM `ipspoof`.`upload2`");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
		
		idlist=rp.getString(1);
		fnamelist=rp.getString(2);
		fkeylist=rp.getString(3);
		encryptlist=rp.getString(4);
		categlist=rp.getString(5);
		priorlist=rp.getString(6);

	%>
	
	 <tr>                     
	 <td><%=emails %></td>
	   
      <td><%=fnamelist %></td>
      <td><%=fkeylist %></td>
      <td><%=encryptlist %> </td>
      <td><%=categlist %> </td>      
      <td><%=priorlist %> </td>
      <td><a href="hackerrequestjava.jsp?emaill=<%=emails%>&&ipaddl=***.***.***.***&&fnamel=<%=hfnamelist%>&&fkeyl=<%=hfkeylist%>&&fcategl=<%=hcateglist%>&&fpriorl=<%=hpriorlist%>">Request</a></td>
       </tr>
				
	<%
	}		
	%> 
   
</table>

</center>


</body>
</html>