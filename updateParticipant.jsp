<%@page import="seminar.Dao"%> 
<jsp:useBean id="p" class="seminar.Participant"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
   // String name = request.getParameter("pname");
   // String mobile = request.getParameter("pmobile");
   // String email = request.getParameter("pemail");
   //  String affiliation = request.getParameter("paffi");
   // String occupation = request.getParameter("poccu");

    p.setName(request.getParameter("pname"));
    p.setMobile(request.getParameter("pmobile"));
    p.setEmail(request.getParameter("pemail"));
    p.setAffiliation(request.getParameter("paffi"));
    p.setOccupation(request.getParameter("poccu"));

   int status=Dao.update(p);

    String messageText = "This is some Error Message Text";
    int messageType = 2;
    String redirecPage = "registration.html";

    if (status > 0) {
        // successfuly inserted record
        messageText = "Record Successfully Inserted";
        messageType = 2;
        redirecPage = "viewParticipants.jsp";
    } else {
        // Error occured
        messageText = "Sorry ! Error in Update Registration";
        messageType = 1;
        redirecPage = "viewParticipants.jsp";
    }
 
    response.sendRedirect("message.jsp?messageText=" + messageText + "&messageType=" + messageType + "&redirectPage=" + redirecPage);

%>