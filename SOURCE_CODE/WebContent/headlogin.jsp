<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>

.mydiv2{
 width:300px;
 height:300px;

 margin-top:-250px;
 margin-left:700px;
 
 }
 


body {
  background-image: url("bgimages/ecommbg3.jpg");
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
font-family: Courier New;
color:black;
font-style:bold;
font-size:30px;
}
.mydiv3{
font-size:30px;
color:#fff;


}

body {
 background-image: url("bgimages/8.jpeg");
  background-repeat: no-repeat; 
  background-size: cover; 

}

form{
width:340px;
height:310px;
background:linear-gradient(90deg, rgba(36,33,0,1) 0%, rgba(9,96,121,1) 0%, rgba(0,212,255,1) 100%);
margin:100px;
margin-radius:5px;
opacity:0.9;
}


</style>

</head>
<body>

<center>

<form action="Headloginservlet" method="post">
<br><br>
<h3><i>HeadOffice Login</i></h3><br>
<input type="text" name="username" placeholder="Username" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="text" name="password" placeholder="Password" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="submit" name="Submit" value="login"class="btn btn-warning"><br><br>

</form>

</center>
</body>
</html>