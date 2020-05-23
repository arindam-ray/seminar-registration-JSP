<%@page import="seminar.Dao"%> 
<jsp:useBean id="p" class="seminar.Participant"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
    String sid=request.getParameter("id");  
    int id=Integer.parseInt(sid); 
    int status=Dao.delete(id);
    
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
      messageText = "Sorry ! Some Error in Input";
      messageType = 1;
      redirecPage = "viewParticipants.jsp";
    }

    response.sendRedirect("message.jsp?messageText=" + messageText + "&messageType=" + messageType + "&redirectPage=" + redirecPage);
%>