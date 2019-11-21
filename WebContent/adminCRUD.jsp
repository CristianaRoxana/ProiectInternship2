<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String email=request.getParameter("email");
	String pass=request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/internship", "root", "root");
	Statement st=conn.createStatement();
	//int i=st.executeUpdate("insert into Admin(Email,Password)values('"+email+"','"+pass+"')");
	
	Statement st1=conn.createStatement();
	String sql = "SELECT Admin_Id,Email,Password FROM Admin";
    ResultSet rs = st1.executeQuery(sql);
    while(rs.next()){
        //Retrieve by column name
        int id  = rs.getInt("Admin_Id");
		String em = rs.getString("Email");
        String ps = rs.getString("Password");
        if(em=="roxana@yahoo.com" && ps=="roxana") {
     
        	response.sendRedirect("//localhost:8080/ProiectInternship/welcomeUser.jsp");
     		
     		}else if(em!="roxana@yahoo.com" && ps!="roxana"){
     		
        	response.sendRedirect("//localhost:8080/ProiectInternship/home.jsp");
        	}
     
     //  System.out.print("ID: " + id);
      //  System.out.print(", Email: " + em);
       // System.out.print(", Pass: " + ps);
       
        
        
     }
      
%>
