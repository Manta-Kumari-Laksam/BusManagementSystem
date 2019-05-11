<%-- 
    Document   : DisplaySchedule
    Created on : 30 Mar, 2019, 4:40:57 PM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="modal.Insert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Schedule</title>
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
        <h1>All Schedule</h1>
        <table>
            <tr>
                <th>Operator</th> <th>Bus Number</th> <th>From</th> <th>To</th> <th>Driver</th> <th>Departure Time</th>
                <th>Arrival Time</th> <th>Bus Fare</th>                                                
            </tr>
            <%
              List<Insert> record= (List<Insert>)request.getAttribute("Details");
              for(Insert s: record){
            %>
            <tr>
                <td><%=s.getOperator()%></td>  <td><%=s.getBusno()%></td> <td><%=s.getFrom1()%></td> <td><%=s.getTo1()%></td>
                <td><%=s.getDriver()%></td>  <td><%=s.getDeparture()%></td> <td><%=s.getArrival()%></td> <td><%=s.getFare()%></td>
            </tr>
            <%}%>
        </table>
        
        
    </body>
</html>
