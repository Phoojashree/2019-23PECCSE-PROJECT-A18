<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

form{
  border: 5px;
  background-image:url(bgimages/4.jfif);    
  border-radius: 5px;
  width:360px;
  height:290px;
  margin: 30px;
  padding-top:40px;
  opacity:0.9;
 }
 


body {
  background-image: url("bgimages/4.jfif");
  background-repeat: no-repeat; 
  background-size: cover;
}


/* .first{
color:#fff;
font-size:18px;
}
 */
h3{
font-family: Britannic Bold;
color:#66d9ff;
font-style:bold;
font-size:30px;
}
.mydiv3{
font-size:30px;
color:#fff;


}

/* form{
width:300px;
height:300px;
background-image:url(bgimages/4.jfif);
padding:30px;
  margin: auto;

} */

</style>


<body>

<center>
<div class="myDiv">
<form action="Managerloginservlet" method="post">
<br><br>
<h3><i>Manager Login</i></h3>
<input type="text" name="username" placeholder="Username" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="text" name="password" placeholder="Password" style="width:230px;height:30px;border-radius:6px;text-align:center;"><br><br>
<input type="submit" name="Submit" style="width:100px;height:35px;border-radius:6px;text-align:center; background-color:#408000;color:white;"><br><br>

</form>
</div>
</center>
</body>
</html>