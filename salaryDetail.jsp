
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="bean.Salary"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hibernate.HibernateSessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style> 
input[type=text] {
    width: 250px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 220%;
}
</style>

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

<h3 style="position:absolute;width:334px;left:650px;top:160px;z-index:3"><font color="black"> Salary Detail</font></h3>
<hr style="position:absolute;width:450px;left:500px;top:210px;z-index:3"> 

<form style="position:absolute;width:330px;left:320px;top:200px;z-index:3" method="post" action="salaryDetail.jsp" onsubmit="myFunction()">
         <h4>Month Name : </h4>   <input type="text" name="search" placeholder="Search Salary Detail ..................!">
        </form>


<%
 String s;
  s=request.getParameter("search");
  Session session1=HibernateSessionFactory.getSession();
  Criteria ct;
  ct=session1.createCriteria(Salary.class);
  Criterion ctn;
  ctn=Restrictions.like("month", "" + s + "%");
  ct.add(ctn);
  List<Salary>mylist;
  mylist=ct.list();
%>
<br>
<br>

<table style="position:absolute;width:1100px;left:150px;top:350px;z-index:3" border="1">
<tr>
<th>Employee Id</th><th>Employee Name</th><th>Designation</th><th>Mobile No</th><th>Date Of Joining</th>
<th>Working Days</th><th>Days Payable</th><th>Earnings</th><th>Deduction</th><th>NET PAY</th>
</tr>
<%
for(Salary sl:mylist)
{
%>
<tr>
<th><%=sl.getEid() %></th><th><%=sl.getEname() %></th><th><%=sl.getDesignation() %></th>
<th><%=sl.getMobile() %></th><th><%=sl.getDoj() %></th><th><%=sl.getWdays() %></th>
<th><%=sl.getDaypay() %></th><th><%=sl.getEarnings() %></th><th><%=sl.getDeduction()%></th>
<th><%=sl.getNetpay()%></th><th><a href="./DeleteSalary.html?salaryid=<%=sl.getSalaryid()%>">Delete</a></th>
</tr>

<%
  }
  session1.close();
   %>
  </table>

</body>
</html>