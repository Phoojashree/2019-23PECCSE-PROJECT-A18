<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="servlet.Encryptdata" %>
    
    <%@ page import="java.util.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

<title>QR-Code Generator</title>
<style>
body {
  background-image: url("image/32.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

*{margin:0px; padding:0px;font-family: Helvetica, Arial, sans-serif;}
h1 { text-align: center; text-shadow: 2px 2px 0px rgba(255,255,255,.7), 5px 7px 0px rgba(0, 0, 0, 0.1);  font-size:50px; margin-top:40px; color:#fff; }
input[type=text]{
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
  width: 61%;
    height: 46px;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<%-- <%
String name=request.getSession().getAttribute("name").toString();
System.out.println("Name: "+name);
%> --%>

<body background="../background1.png">
<%String email=session.getAttribute("emailkey").toString(); %>
<div class="col-sm-2"></div>
        <div class="col-sm-8">
        <center>
        <table class="table table-sm" style="margin-top: 100px">
        <tr>
        
        <th>Filename</th>
        <th>Filekey </th>        
        <th>Manager Email</th>
		 <th>QR Generate</th>       

        <th>Download</th>       
        </tr>
             <% 
 String sno="";
 String file="";



Connection con = Dbconn.create();
PreparedStatement p = con.prepareStatement("SELECT * FROM ipspoof.respons where uname='"+email+"' ");
ResultSet rs=p.executeQuery();

	while(rs.next())
	{									
		sno=rs.getString(1);
	
		file=rs.getString(8);
	%>
	<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(6)%></td>

<td>
<% Encryptdata cd=new Encryptdata();
 String fkey=cd.decrypt(file);%>
        
        <button class="generate" onclick="myFunction(this.value)" value="<%=fkey %>">generate</button>
   
</td>

<td><a href="staffdownloadjava.jsp?headkey=<%=fkey %>&&fname1=<%=rs.getString(2)%>&&fkeyl=<%=rs.getString(3)%>&&headkey=<%=file %>"><button class="btn-btn-info btn-sm"> Download</button></a></td>
</tr>
<%}%>
            </table>
        </center>
        </div>
        <div class="col-sm-2"></div>
            </center>
                 </div>
     
<h1>QR-Code Generator</h1>


  <div style="float:right;">
   <div id="image" style="margin:auto"></div>
   <div id="link" style="margin-top:10px; text-align:center"></div>
  </div>
  
  <div id="code" style="float:left; width:100%; height:20px; text-align:center; margin-top:10px"></div>
<script>

function myFunction(data) {

var size = 248;
if(data == "") {
	console.log("out")
    $("#alert").append("<p style='color:#fff;font-size:20px'>Please Enter A Url Or Text</p>"); // If Input Is Blank
    return false;
} else {
    if( $("#image").is(':empty')) {
		console.log("in")
	  //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
     // $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return true;
	} else {
		console.log("else out")
      $("#image").html("");
      $("#link").html("");
      $("#code").html("");
	  
      //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
      $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return false;
    }
  }
}
</script>  
</body>
</html>