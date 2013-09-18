<%-- 
    Document   : result
    Created on : Sep 10, 2013, 6:41:15 PM
    Author     : Shan
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="cse.maven.sample.NicInterpreter"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center"><u>Information of the NIC: </u></h1>
        
        <%  try{ 
             String number =  request.getParameter("nicNumber");
             NicInterpreter nic = new NicInterpreter(number);
        %>
        <br>
        <h2> Birthday Information: </h2>
        <% out.println("Year : "+nic.getYear()); %>
        <br>
        <% out.println("Month : "+nic.getMonth()); %>
        <br>
        <% out.println("Date : "+nic.getDate()); %>
        <br>
        <h2> Gender Information: </h2>
        <% out.println(nic.getGender()); %>
        <br>
        <h2> Voting information: </h2>
        <% out.println("Is voter: "+nic.isVoter());
            }
             catch(Exception ex){
                    out.println("Enter NIC number correctly");
                }
        %>
    </body>
</html>
