<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">

<style>

.mydiv2{
 width:300px;
 height:300px;

 margin-top:-250px;
 margin-left:700px;
 
 }
 


body {
  background-image: url("bgimages/6.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

a {
  background-color: #33ccff;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius:5px;
}

/* .first{
color:#fff;
font-size:18px;
}
 */
h3{
font-family:  Courier New;
color:#66d9ff;
font-style:bold;
font-size:30px;
}
.mydiv3{
font-size:30px;
color:#fff;


}
form{
width:340px;
height:400px;
background:linear-gradient(to bottom, #ff5050 0%, #99ccff 100%);
margin:100px;
margin-radius:5px;
opacity:0.9;
}


</style>

</head>
<body>

<center>

<form action="Staffloginservlet" method="post">
<br>
<h3><i>Staff Login</i></h3>
<input type="hidden" name="ipadd" placeholder="Username" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="email" name="username" placeholder="enter email" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="password" name="password" placeholder="Password" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="submit" value="Login" name="Submit" style="width:100px;height:35px;border-radius:6px;text-align:center; background-color:#408000;color:white;"><br><br>



<div class="mydiv3">NewUser?</div><a href="staffregister.jsp">Signup</a>
</form>
</center>
</body>
</html>