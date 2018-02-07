<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <% 
        String name=request.getParameter("name");
		String mail=request.getParameter("mailID");
		String pwd=request.getParameter("password");
		String phno=request.getParameter("phno");
		String dob=request.getParameter("dob");
		Class.forName("org.mariadb.jdbc.Driver");
		String url="jdbc:mariadb://localhost:3306/students";
		String username="root";
		String password="root";
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, mail);
		ps.setString(3, pwd);
		ps.setLong(4, Long.parseLong(phno));
		ps.setString(5, dob);
		
		ps.executeQuery();
		out.println("<font color=red>Inserted Succesfully</font>");
		%>
	<%@ include	file="register.jsp" %>
	
</body>
</html>