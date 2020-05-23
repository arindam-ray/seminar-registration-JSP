<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seminar Registration</title>
    <link rel="icon" href="images/logo.png">
    <link rel="stylesheet" href="style.css">
</head>
<%

    String messageText = request.getParameter("messageText");
    String messageType = request.getParameter("messageType");
    String redirectPage = request.getParameter("redirectPage");
    String color="black";

        if (messageType == "1")
            color = "color:#FF0000";
        if (messageType == "2")
            color = "color:#00FF00";
        if (messageType == "3")
            color = "color:#000000";

%>

<body>
    <center><img src="images/logo.png" width="75" alt="">
        <h1>Display Message</h1>
        <table width="50%" id="cus_table1">
            <tr>
                <td align="center" style="<%=color%>">
                    <h2><%=messageText%></h2>
                </td>
            </tr>
            <tr>
                <td align="center"> <a href="<%=redirectPage%>"><button id='cus_btn'>OK</button></a> </td>
            </tr>
        </table>
        </form>
    </center>
</body>

</html>