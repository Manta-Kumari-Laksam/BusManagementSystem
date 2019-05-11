<%-- 
    Document   : DisplayStaff
    Created on : 31 Mar, 2019, 3:49:22 PM
    Author     : DELL
--%>

<%@page import="modal.StaffDetailPojo"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display staff Page</title>
        <style>
             body{
                background-image: url("pics/s1.png");
                background-size: cover;
                background-repeat: no-repeat;
                padding: 50px;
                justify-content: center;
                align-items: center;
                display: flex;
                flex-direction: column;
            }
            .myDiv{
                font-size: 20px;
                color: black;
                background-color: powderblue;
                padding: 20px;
                border-radius: 20px;
                /*border-color: rgba(0,0,0,0);*/
            }
            tr,td,th{
                border-style: dashed;
                padding: 10px;
            }
            table{
             border-collapse: collapse;
            }
        </style>
    </head>
    <body>
        <h1>Staff Details</h1>
        <div class="myDiv">
        <table>
            <tr>
                <th>Staff Name</th> <th>Staff Password</th>  <th>Staff Contact no.</th>  <th>Staff Address</th>
                    
            </tr>
            <%
              List<StaffDetailPojo> record= (List<StaffDetailPojo>)request.getAttribute("Details");
              for(StaffDetailPojo s: record){
            %>
            <tr>
                <td><%=s.getName()%></td>  <td><%=s.getPassword()%></td> 
                <td><%=s.getPhone()%></td>  <td><%=s.getAddress()%></td> 
            </tr>
            <%}%>
        </table>
        </div>
    </body>
</html>
