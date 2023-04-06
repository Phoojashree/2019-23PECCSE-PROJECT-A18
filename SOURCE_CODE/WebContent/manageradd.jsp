<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
 <link rel="stylesheet" href="css/font-awesome.min1.css">
</head>
<style>
body{
background-color:#33BAFF;
}


</style>


<body><br>
<div class="backtag">
<button class="btn btn-warning" onclick="history.back()" style="float:right">Back</button>
</div>


<br><br>
<center>


<% Random r=new Random();
	
	int f=r.nextInt(100000);
	String filekey= ""+f;
	
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


<br><br>
 <div class="container">
  
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px">Add File</h3><br>
  
    <form method="post" action="Manageraddservlet" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
        <div class="form-group">
          <label for="full_name" style="color:#fff;">File Key:</label>
          <input type="text" class="form-control" id="full_name" value=<%=t6%> name="filekey" required>
        </div>
        
        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload your File:</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        
        <div class="form-group">
          <label for="email"  style="color:#fff;">Type:</label>
          <select name="category" class="form-control" id="email"   required>
      			    <option value="loan">Loan</option>
    			<option value="insurance">Insurance</option>
    				<option value="netbanking">Netbanking</option>
  	 			 <option value="atmservice">ATM Services</option>
  				  <option value="management">Management</option>
   				 <option value="deposit">Deposit</option>
   	 			<option value="credit">Credit</option>
  			</select>
        </div>
        <div class="form-check">
          <label for="flexRadioDefault1"  style="color:#fff;">Priority:</label>
          <input  type="radio" name="priority" value="high">High
			<input  type="radio" name="priority" value="low">Low
			<input type="radio" name="priority" value="medium">Medium
          
        </div><br>
       
        <center><button  class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
       


</table>
</div>
</div>
</form>



</center>

</body>
</html>