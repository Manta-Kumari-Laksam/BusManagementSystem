<%-- 
    Document   : ShowBusNo
    Created on : 31 Mar, 2019, 12:18:23 PM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="modal.Insert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show BusNo Page</title>
         <link rel="stylesheet" type="text/css" href="Student.css">
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
        <div class="BusNo" id="BusNoId">
            <h2 style="color: black">Bus Number Based</h2>
				<table id="table1" >
            <tr>
                           <th>Bus No</th>                                               
                       </tr>
                        <%
                         List<Insert> record= (List<Insert>)request.getAttribute("Details");
                         for(Insert s: record){
                       %>

                        <tr>
                           <td><%=s.getBusno()%></td>

                       </tr>
                       <%}%>
				</table>
				</div>
    </body>
    <script>
        document.body.style.backgroundImage="url('pics/p3.jpg')";
    </script>
</html>
