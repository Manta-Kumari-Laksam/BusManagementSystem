<%-- 
    Document   : Display
    Created on : 26 Mar, 2019, 9:26:44 AM
    Author     : DELL
--%>

<%@page import="modal.AllUser"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            table{
                border: 2px solid black;
                padding: 20px;
                border-collapse: collapse;
                border-style: dashed;
                background-image: url("pics/bg3.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                width: 40%;
            }
            tr,th,td{
                padding: 20px;
                color: black;
                border: 2px solid black;
                border-style: dashed;
            }
            th{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
    <marquee behavior="alternate" hspace="10%"  width="55%" direction="right"> <h1>Student information - Dynamic table</h1> </marquee>
        <table>
            <tr>
                <th>Name</th> <th>Id</th> <th>Marks</th>
            </tr>
        <% 
            List<AllUser> records = (List<AllUser>)request.getAttribute("list");
            for(AllUser s:records){
        %>
        <tr>
            <td><%=s.getName()%></td>
            <td><%=s.getPassword()%></td>
            <td><%=s.getUserType()%></td>
        </tr>
        <%}%> 
        <!--closing loop-->
        </table>
        
    </body>
</html>


