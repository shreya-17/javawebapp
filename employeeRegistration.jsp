<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <%@page import="java.util.*" %>
    
    <%
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String today = formatter.format(date);
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



</head>
<body>
<h3 style="position:absolute;width:334px;left:600px;top:160px;z-index:3"><font color="black">Employee Registration Form</font></h3>
<hr style="position:absolute;width:450px;left:500px;top:210px;z-index:3">        


<form style="position:absolute;width:px;left:520px;top:270px;z-index:3" method="post" action="./SaveEmployeeDetail.html" >
            
            
            <table cellpadding="2" width="90%" bgcolor="" align="center">




<tr>

  <td>Employee Name</td>

  <td><input type="text" name="ename"  size="35" required="required"></td>

  </tr>
<tr>
                    <th></th>
                    <td><br></td>
                </tr>

<tr>

  <td>Father Name</td>

  <td><input type="text" name="fname" size="35" required="required"></td>

  </tr>
<tr>
                    <th></th>
                    <td><br></td>
                </tr>
  <tr>

  <td>Date Of Birth</td>

  <td><input type="date" name="dob"      size="35"  value=""   required="required"  ></td>

  </tr>

<tr>
                    <th></th>
                    <td><br></td>
                </tr>
<tr>

  <td>Gender</td>

  <td><input type="radio" name="gender" value="Male" size="10" required="required">Male

  <input type="radio" name="gender" value="Female" size="10">Female</td>

  </tr>

<tr>
                    <th></th>
                    <td><br></td>
                </tr>

<tr>

  <td>Contact Number</td>

  <td><input type="text" name="mobile"      size="35"     required="required"  ></td>

  </tr>

<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Email</td>

  <td><input type="email" name="email"      size="35"     required="required"  ></td>

  </tr>

<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Address</td>

  <td><textarea  required="required" name="address" ></textarea></td>

  </tr>

<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Date Of Joining</td>

  <td><input  type="text" value="<%=today %>" name="doj" required="required" size="35" ></td>

  </tr>

<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Designation</td>

  <td><select required="required" name="designation" >
<option value="-1" selected>select..</option>
<option value="Systems Engineer">Systems Engineer</option>
<option value="Senior Systems Engineer">Senior Systems Engineer</option>
<option value="Technology Analyst">Technology Analyst</option>
<option value="Technology Lead">Technology Lead</option>
<option value="Project Manager">Project Manager</option>
 </select></td>
</tr>


<tr>
<th></th>
<td></td>
</tr>
<tr>

  <td>Qualification</td>

  <td><input  type="text" required="required" size="35" name="qualification" ></td>

  </tr>
<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Job Location</td>

  <td><input  type="text" required="required" size="35" name="joblocation" value="Indore" ></td>

  </tr>
<tr>
<th></th>
<td></td>
</tr>

<tr>

  <td>Basic Salary</td>

  <td><input  type="text" required="required" size="35" name="salary"></td>

  </tr>
<tr>
<th></th>
<td></td>
</tr>

<tr>
<th></th>
<td><input type="submit" value="Submit"> <input type="reset" value="Reset"></td>
</tr>
</table>
</form>
</body>
</html>