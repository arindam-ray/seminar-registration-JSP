<%@page import="seminar.Dao"%> 
<jsp:useBean id="p" class="seminar.Participant"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
    String name = request.getParameter("pname");
    String mobile = request.getParameter("pmobile");
    String email = request.getParameter("pemail");
    String affiliation = request.getParameter("paffi");
    String occupation = request.getParameter("poccu");

    p.setName(name);
    p.setMobile(mobile);
    p.setEmail(email);
    p.setAffiliation(affiliation);
    p.setOccupation(occupation);


    int status=Dao.save(p);


    String messageText = "This is some Error Message Text";
    int messageType = 2;
    String redirecPage = "registration.html";

    if (status > 0) {
      // successfuly inserted record
      messageText = "Record Successfully Inserted";
      messageType = 2;
      redirecPage = "registration.html";
    } else {
      // Error occured
      messageText = "Sorry ! Some Error in Input";
      messageType = 1;
      redirecPage = "registration.html";
    }

response.sendRedirect("message.jsp?messageText=" + messageText + "&messageType=" + messageType + "&redirectPage=" + redirecPage);
 
%>