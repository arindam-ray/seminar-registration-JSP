<%@page import="seminar.Dao,seminar.Participant,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Participant</title>
<link rel="icon" href="images/logo.png">
<link rel="stylesheet" href="style.css">
</head>
<body>

<%
List<Participant> list=Dao.getAllParticipants();
request.setAttribute("list",list);
%>
<center>
<img src="images/logo.png" width="75" alt="">
<table border='1' width='80%' id='cus_table2'>
<caption><h1>Registered Participants List</h1></caption>
<tr>
	<th>SL</th>
	<th>Name</th>
	<th>Mobile</th>
	<th>EMail</th>
	<th>Occupation</th>
	<th>Affiliation</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
 
<%  int i=1;  
 for (Participant p : list) {
%>
 
 <tr>
	<td><%=i%> </td>
	<td><%=p.getName()%></td>
	<td><%=p.getMobile()%> </td>
	<td><%=p.getEmail()%></td>
	<td><%=p.getOccupation()%> </td>
	<td><%=p.getAffiliation()%>  </td>
	<td><a href='editParticipant.jsp?id=<%=p.getId()%>'>Edit</a></td>
	<td><a href='deleteParticipant.jsp?id=<%=p.getId()%>'>Delete</a></td>
 </tr>
	
<% i++;
   } 
%>
<tr>
<td colspan=8 align='center'><a href="registration.html">Add New Participant</a></td>
</tr>
</table>
</center>
</body>
</html>