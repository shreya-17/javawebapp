<%@page import="org.hibernate.Criteria"%>
<%@page import="hibernate.HibernateSessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="bean.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
} 
</style>

</head>
<body>

<h3 style="position:absolute;width:334px;left:650px;top:160px;z-index:3"><font color="black">Employee Detail</font></h3>
<hr style="position:absolute;width:450px;left:500px;top:210px;z-index:3">

<%
Session session1=HibernateSessionFactory.getSession();
Criteria ct;
ct=session1.createCriteria(Employee.class);
List<Employee>mylist;
mylist=ct.list();
 %>
 
 <table style="position:absolute;width:1100px;left:150px;top:350px;z-index:3" border="1">
 <tr>
<th>Employee Id</th><th>Employee Name</th><th>Father Name</th><th>DOB</th><th>Gender</th><th>Mobile No</th><th>Email</th><th>Address</th><th>Date Of Joining</th>
<th>Designation</th><th>Qualification</th><th>Job Location</th><th>Basic Salary</th>
</tr>
 
 <%
 for(Employee e:mylist)
 {
  %>
 <tr>
 <th><%= e.getEid()%></th><th><%= e.getEname()%></th><th><%= e.getFname()%></th><th><%= e.getDob()%></th>
 <th><%= e.getGender()%></th><th><%= e.getMobile()%></th><th><%= e.getEmail()%></th><th><%= e.getAddress()%></th>
 <th><%= e.getDoj()%></th><th><%= e.getDesignation()%></th><th><%= e.getQualification()%></th><th><%= e.getJoblocation()%></th>
 <th><%=e.getSalary() %></th>
 
 </tr>
 <%
 }
 session1.close();
  %>
 </table>
</body>
</html>