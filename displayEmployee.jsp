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

<table style="position:absolute;width:1100px;left:150px;top:350px;z-index:3" border="1">
<tr>
<th><a href="./Salary.html?eid=${employee.eid}">Salary</a></th><th><a href="./SalarySlip.html?ename=${employee.ename}">Salary Slip</a></th><th><a href="./UpdateEmplouee.html?eid=${employee.eid}">Update Detail</a></th><th><a href="./DeleteEmployee.html?eid=${employee.eid}">Delete</a></th>
</tr>
<tr>
<th>Employee Id</th><th>Employee Name</th><th>Father Name</th><th>DOB</th><th>Gender</th><th>Mobile No</th><th>Email</th><th>Address</th><th>Date Of Joining</th>
<th>Designation</th><th>Qualification</th><th>Job Location</th><th>Basic Salary</th>
</tr>

<tr>
<th>${employee.eid}</th><th>  ${employee.ename}</th><th>  ${employee.fname}</th><th>${employee.dob}</th><th>${employee.gender}</th><th>${employee.mobile}</th><th>${employee.email}</th>
<th>${employee.address}</th><th>${employee.doj}</th><th>${employee.designation}</th><th>${employee.qualification}</th><th>${employee.joblocation}</th>
<th>${employee.salary}</th>
</tr>

</table>
</body>
</html>