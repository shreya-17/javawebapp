<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${salary.ename}_${salary.month}_salary_slip</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">

  <!-- Load paper.css for happy printing -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paper-css/0.2.3/paper.css">

  <!-- Set page size here: A5, A4 or A3 -->
  <!-- Set also "landscape" if you need -->
  <style>@page { size: A4 }</style>


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
<script>
function myFunction() {
    window.print();
}
</script>

</head>
<!-- Set "A5", "A4" or "A3" for class name -->
<!-- Set also "landscape" if you need -->
<body class="A4" >
<a href="header.jsp"><font color="white">back</font></a>
<center>
  <!-- Each sheet element should have the class "sheet" -->
  <!-- "padding-**mm" is optional: you can set 10, 15, 20 or 25 -->
  <section class="sheet padding-10mm" onclick="myFunction()">
           
   
    <!-- Write HTML just like a web page -->
  <img src="images/logo2.png" style="position:absolute;left:60px;top:60px;z-index:3">
  <hr style="position:absolute;width:650px;left:70px;top:150px;z-index:3">
  <h4 style="position:absolute;left:70px;top:150px;z-index:3">PixelMarketo Pvt Ltd.</h4>
  <hr style="position:absolute;width:650px;left:70px;top:190px;z-index:3">
  <h4 style="position:absolute;left:230px;top:210px;z-index:3">PAYSLIP FOR THE MONTH OF : ${salary.month}</h4>
  
  <form style="position:absolute;width:83%;  left:70px;top:270px;z-index:3">
  <table style="width:100%">
  <tr>
    <th>Employee Id</th><td>${salary.eid }</td>
    <th >Employee Name</th><td>${salary.ename}</td>
  </tr>
  <tr>
    <th>Designation</th><td>${salary.designation}</td>
    <th>Contact Number</th><td>${salary.mobile}</td>
  </tr>
  <tr>
    <th>Date Of Joining</th><td>${salary.doj }</td>
    <th >Job Location</th><td>${salary.joblocation}</td>
  </tr>
  <tr>
    <th>Working Days</th><td>${salary.wdays}</td>
    <th>Days Payable</th><td>${salary.daypay}</td>
  </tr>
</table>
<br>
<table style="width:100%" >
<tr>
    <th colspan="2">Earnings<font style="position:absolute;left:300px;z-index:3">RS</font></th>
    <th colspan="2">Deduction<font style="position:absolute;left:600px;z-index:3">RS</font></th>
  </tr>

  <tr>
    <th>Basic</th><td>${salary.salary }</td>
    <th>Provident Fund</th><td>${salary.pfund }</td>
    
  </tr>
  <tr>
    <th>Advance Bonus</th><td>${salary.bonus }</td>
    <th>Income Tax</th><td>${salary.tax}</td>
  </tr>
  <tr>
    <th>Special Allowance</th><td>${salary.allowance }</td>
  </tr>
  <tr >
  <th><b>Gross Earnings</b></th><td><b>${salary.earnings}</b></td>
  <th><b>Gross Deduction</b></th><td><b>${salary.deduction}</b></td>
  </tr>
</table>
<table width="100%">
<tr>
<th colspan="4"><b>Net Pay :  RS.    ${salary.netpay}  </b></th>
</tr>
</table>
  </form>
  
  </section>
   
</center>
</body>
</html>