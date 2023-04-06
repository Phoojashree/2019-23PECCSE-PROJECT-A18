<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Home Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #b3003b;
}

li {
  float: right;
  padding-right:105px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;

  text-decoration: none;
}

body {
  background-image: url("bgimages/1.jpg");
  background-repeat: no-repeat; 
  background-size: 1520px 700px;
}

</style>


</head>
<body>

<ul>
<li><a href="homepageipspoof.jsp">Logout</a></li>
<li><a href="managerfileview.jsp">View</a></li>
<li><a href="manageradd.jsp">Add</a></li>
<li><a href="homepageipspoof.jsp">Home</a></li>  
<li><a href="staffsview.jsp">Staff description</a></li>

</ul>

</body>
</html>