<%@page import="seminar.Dao,seminar.Participant"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seminar Registration</title>
    <link rel="icon" href="images/logo.png">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
String id=request.getParameter("id");
Participant p=Dao.getParticipantById(Integer.parseInt(id));

 
    String occuStatus1 = "";
    String occuStatus2 = "";
    String occuStatus3 = "";
    String occuStatus4 = "";
    String occuStatus5 = "";

    switch (p.getOccupation()) {
            case "student":
                    occuStatus1 = "Selected";
                    break;
            case "scholar":
                    occuStatus2 = "Selected";
                    break;
            case "faculty":
                    occuStatus3 = "Selected";
                    break;
            case "industry":
                    occuStatus4 = "Selected";
                    break;
            case "others":
                    occuStatus5 = "Selected";
    }


%>
    <center>
        <img src="images/logo.png" width="75" alt="">
        <h1>Registration Modification</h1>
        <form action="updateParticipant.jsp" method="POST">
            <table width="50%" id="cus_table1">
                <tr>
                    <td>1. Participant Name *</td>
                    <input type='hidden' name='id' value= <%=id%>>
                    <td><input type="text" name="pname" maxlength="80" size="50" placeholder="Participant Name" requrired value='<%= p.getName()%>'></td>
                </tr>
                <tr>
                    <td>2. Mobile No. *</td>
                    <td><input type="text" name="pmobile" maxlength="10" size="20" pattern="[0-9]+"  placeholder="Mobile No " required value='<%= p.getMobile()%>'></td>
                </tr>
                <tr>
                    <td>3. Email *</td>
                    <td><input type="email" name="pemail" size="50" placeholder="Email for confirmation mail" required value='<%= p.getEmail()%>'></td>
                </tr>
                <tr>
                    <td>4. Affiliation / Institution</td>
                    <td><input type="text" name="paffi" maxlength="90" placeholder="Institute / Company Name" size="50" value='<%= p.getAffiliation()%>'></td>
                </tr>
                <tr>
                    <td>5. Occupation Type</td>
                    <td><select name="poccu">
                        <option value="student" <%= occuStatus1 %>>Student</option>
                        <option value="scholar" <%= occuStatus2 %>>Research Scholar</option>
                        <option value="faculty" <%= occuStatus3 %>>Faculty</option>
                        <option value="industry" <%= occuStatus4 %>>Industry</option>
                        <option value="others" <%= occuStatus5 %>>Others</option>
                    </select>    </td>
                </tr>
                <tr>
                    <td colspan=2 align="center"><input type="submit"> <input type="reset"></td>

                </tr>   
                <tr>
                    <td colspan=2 align="center"> <a href="viewParticipants.jsp">List of Registered Participants</a> </td>
                </tr>     
       
            </table>

        </form>
                
    </center>
</body>





 

</body>
</html>