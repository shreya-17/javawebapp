<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
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

<h3 style="position:absolute;width:334px;left:650px;top:160px;z-index:3"><font color="black"><a href="SearchAll.jsp">Employee Detail</a></font></h3>
<hr style="position:absolute;width:450px;left:500px;top:210px;z-index:3">        


<form style="position:absolute;width:px;left:520px;top:270px;z-index:3" method="post" action="./SerachByName.html" >
            
            
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
<th></th>
<td><input type="submit" value="Submit"> <input type="reset" value="Reset"></td>
</tr>
</table>
</form>



</body>
</html>