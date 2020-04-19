<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Calendar" %>
    <%@page import="java.util.Formatter" %>
    <%@include file="header.jsp" %>
    <%
   Formatter fmt = new Formatter();
      Calendar cal = Calendar.getInstance();
      fmt = new Formatter();
      fmt.format("%tB", cal);
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 3px 2px;
    cursor: pointer;
    width: 100px;
 
    border-radius: 15px;
    
    
}
.feild
{
    width: 250px;
    height: 30px;
    border-radius: 20px;
    border: #4CAF50 solid 2px;
    margin-bottom: 10px;
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

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>

<script type="text/javascript">
            function addnum(n1,n2,n3)
            {
                var no1=parseFloat(n1);
                var no2=parseFloat(n2);
                var no3=parseFloat(n3);
                var no4=no1+no2+no3;
               myform.earnings.value=no4;
            }
            
            function addnum1(n1,n2)
            {
                var no1=parseFloat(n1);
                var no2=parseFloat(n2);
                var no3=no1+no2;
                myform.deduction.value=no3;
            }
            
            function addnum2(n1,n2)
            {
                var no1=parseFloat(n1);
                var no2=parseFloat(n2);
                var no3=no1-no2;
                myform.netpay.value=no3;
            }
            </script>
            </script>
            
            
</head>
<body>

<h3 style="position:absolute;width:334px;left:650px;top:160px;z-index:3"><font color="black">Employee Salary </font></h3>
<hr style="position:absolute;width:450px;left:500px;top:210px;z-index:3">        


<form name="myform" style="position:absolute;width:px;left:330px;top:270px;z-index:3" method="post" action="./SalaryInsert.html" >
            
            
            <table  width="100%" bgcolor="" align="center" border="1" >
    <tr>
    <th colspan="4">PAY FOR THE MONTH OF <input type="text" name="month" required="required" size="40"  value="<%=fmt%> <%=cal.get(Calendar.YEAR)%>"></th>
    </tr>
     <tr>

  <td>Employee Id</td><td><input type="text" name="eid" value="${employee.eid}"  size="35" required="required" readonly="readonly"></td>
  <td>Employee Name</td><td><input type="text" name="ename"  size="35" required="required" value="${employee.ename}" readonly="readonly"></td>
    </tr>
<tr>
<td>Designation</td><td><input type="text" required="required" name="designation" size="35" value="${employee.designation}" readonly="readonly"></td>
<td>Contact Number</td><td><input type="text" name="mobile"      size="35"     required="required" value="${employee.mobile}" readonly="readonly"></td>
</tr>


<tr>
<td>Date Of Joining</td><td><input  type="text"  name="doj" required="required" size="35" value="${employee.doj}" readonly="readonly"></td>
<td>Job Location</td><td><input  type="text" required="required" size="35" name="joblocation" value="${employee.joblocation}" readonly="readonly"></td>
</tr>

<tr>
<td>Working Days</td><td><input  type="text" required="required" size="35" name="wdays" value="30"  ></td>
<td>Days Payable</td><td><input  type="text" required="required" size="35" name="daypay"  placeholder="30" ></td>
  </tr>
</table>

<table style="width:100%">
  <tr>
    <th colspan="2">Earnings<font style="position:absolute;left:350px;z-index:3">RS</font></th>
    <th colspan="2">Deduction<font style="position:absolute;left:750px;z-index:3">RS</font></th>
  </tr>
  <tr>
    <td>Basic</td>
    <td><input type="text" name="salary" value="${employee.salary}" size="35"></td>
    <td>Provident Fund</td>
    <td><input type="text" name="pfund" size="35" ></td>
  </tr>
  <tr>
    <td>Advance Bonus</td>
    <td><input type="text" name="bonus" size="35" ></td>
    <td>Income Tax</td>
    <td><input type="text" name="tax" size="35" ></td>
  </tr>
  <tr>
    <td>Special Allowance</td>
    <td><input type="text" name="allowance" size="35" ></td>
  </tr>
</table>
<table style="width:100%">
<tr>
    <td   style="width: 120px; ">   Gross Earnings </td>
    <td style="width: 280px; "><input type="text" name="earnings" size="35" onclick="addnum(salary.value,bonus.value,allowance.value)" ></td>
    <td>Gross Deduction </td>
    <td><input type="text" name="deduction" size="35" onclick="addnum1(pfund.value,tax.value)" ></td>
  </tr>
   <tr >
    <th colspan="4">NET PAY <input type="text" name="netpay" required="required" size="40" onclick="addnum2(earnings.value,deduction.value)"></th>
    </tr>
     <tr>
     
   
    <tr >
    
    <td colspan="4" style="position:absolute;width:px;left:330px;z-index:3"><input type="submit" value="Submit"><input type="reset" value="Reset"></td>
    </tr>
     <tr>
</table>
</form>



</body>
</html>