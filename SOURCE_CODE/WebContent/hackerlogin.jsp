<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
font-family: cursive, Courier New;
color:#66d9ff;
font-style:italic;
font-size:30px;
}
.mydiv3{
font-size:30px;
color:#fff;


}

body {
  /* background-image: url("bgimages/spoofaaa.jpg");
  background-repeat: no-repeat; 
  background-size: cover; */
  background-image: linear-gradient(to right, blue ,yellow);
}

</style>

</head>
<body>

<center>

<form action="Hackerloginservlet" method="post">
<br><br>
<h3><i>Hacker Login</i></h3>
<input type="text" name="username" placeholder="Username" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="text" name="password" placeholder="Password" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="submit" name="Submit" style="width:100px;height:35px;border-radius:6px;text-align:center; background-color:#408000;color:white;"><br><br>

</form>

</center>
</body>
</html>