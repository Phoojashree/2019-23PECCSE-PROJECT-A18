<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
nav {
  height: 100vh;
  display: grid;
  place-items: center;
}

input {
  box-sizing: border-box;
  height: 65px;
  width: 325px;
  padding: 12.5px;
  outline: none;
  border: none;
  border-radius: 25px;
  box-shadow: 0 2px 5px rgba(15, 15, 51, 0.4);
  font-size: 25px;
  color: rgba(15, 15, 51, 0.8);
  background-color: #E5E5E5;
  transition: .4s;
  
}

input:hover, :focus {
  width: 375px;
  border-radius: 10px;
  box-shadow: 0 5px 5px rgba(15, 15, 51, 0.4);
}

input:not(:placeholder-shown) {
  margin-bottom: 10px;
  border-bottom: 6px solid #3782F7;
  height: 69px;
}
























</style>



















</head>
<body>
<nav>
 
 <%String d=request.getParameter("id"); %>
 <form action="Change" method="post">
 
  <p><label for="w3review">Add Description:</label></p>
  <textarea id="w3review" name="description" rows="4" cols="50"></textarea>
  <br>
   <input type="hidden" value="<%=d%>" name="id">
  
  <input type="submit" value="Submit">
</form>

</nav>
</body>
</html>