<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.myDiv {
  border: 5px outset #77c732;
  background-color: lightblue;    
  border-radius: 10px;
  width:600px;
  height:400px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
}
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #77c732; 
}

body {
  /* background-image: url("bgimages/spoofaaa.jpg");
  background-repeat: no-repeat; 
  background-size: cover; */
  background-image: linear-gradient(to right, purple , green);
}


</style>


</head>
<body>

<%

Random r = new Random();
String ipstr= r.nextInt(255) + "." + r.nextInt(255) + "." + r.nextInt(255) + "." + r.nextInt(255);

%>


<br><br><br>
<center>
<div class="myDiv2">
Staff Register
</div>
</center>
<br><br>

<!-- <div class="myDiv"> -->
<center>
  <form action="Staffregservlet" method="post">
  <input type="text" name="username" placeholder="Username" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="phonenumber" placeholder="Phonenumber" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="email" name="email" placeholder="Emailid" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="password" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="today" name="password" placeholder="today" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="ipadd" value="<%=ipstr %>" style="width:280px;height:40px;border-radius: 10px;text-align:center;" readonly><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;background-color:aqua;"><br><br>
 
  </form>
  </center>
<!-- </div> -->



</body>
</html>


