<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="imple.Imple" %>
<%@page import="inter.Inter" %>
<%@page import="servlet.Encryptdata" %>
<%@page import="bean.Uploadbean" %>
<%@page import="java.io.IOException"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String fname=request.getParameter("fnamel");
System.out.println("Filename:"+fname);
 
String fkey=request.getParameter("fkeyl");
System.out.println("File Key: "+fkey);

String fcateg=request.getParameter("fcategl");
System.out.println("File Category: "+fcateg);

String fprior=request.getParameter("fpriorl");
System.out.println("Priority: "+fprior);

String uname=request.getParameter("emaill");
System.out.println("Filename:"+uname);

String ipadd=request.getParameter("ipaddl");
System.out.println("Filename:"+ipadd);

String fkeyqr=request.getParameter("fkey");
System.out.println("fkeyqr:"+fkeyqr);

/*HttpSession sess=request.getSession();
sess.setAttribute( "email",name);
System.out.println("email: "+name);*/
Encryptdata cd=new Encryptdata();
String key=cd.encrypt(fkeyqr);

Uploadbean sb=new Uploadbean();
//stdb.setSname(sname);
sb.setFilename(fname);
sb.setFilekey(fkey);
sb.setFilecateg(fcateg);
sb.setFileprior(fprior);
sb.setUsername(uname);
sb.setIpaddress(ipadd);
sb.setFkeyqr(key);


Inter in=new Imple();
int i=in.responsinter(sb);
if(i==1){
	response.sendRedirect("responsesentsuccess.jsp");
}
else{
	response.sendRedirect("error.jsp");
}




%>

</body>
</html>