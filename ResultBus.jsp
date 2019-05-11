<%-- 
    Document   : ResultBus
    Created on : 1 Apr, 2019, 2:19:05 PM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="modal.Insert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ResultBus JSP Page</title>
        <style>
            body{
                display: flex;
                justify-content: center;
                align-items: center;
                background-image: url("pics/bg2.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
             table{
                position: absolute;
                top:200px;
                border: 2px solid black;
                padding: 20px;
                border-collapse: collapse;
                border-style: dashed;
                background-image: url("pics/p1.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
            tr,th,td{
                padding: 20px;
                color: black;
                border: 2px solid black;
                border-style: dotted;
            }
            th{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>Operator</th> <th>Bus No</th> <th>From</th>
                <th>To</th> <th>Driver</th> <th>Departure</th>
                <th>Arrival</th> <th>Fare</th> 
            </tr>
        <% 
            List<Insert> records = (List<Insert>)request.getAttribute("Records");
            for(Insert s:records){
        %>
        <tr>
            <td><%=s.getOperator()%></td>
            <td><%=s.getBusno()%></td>
            <td><%=s.getFrom1()%></td>
            <td><%=s.getTo1()%></td>
            <td><%=s.getDriver()%></td>
            <td><%=s.getDeparture()%></td>
            <td><%=s.getArrival()%></td>
            <td><%=s.getFare()%></td>
            
        </tr>
        <%}%> 
        </table>
 
    </body>
</html>
