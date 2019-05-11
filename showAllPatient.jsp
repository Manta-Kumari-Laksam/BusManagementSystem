
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show All Patient</title>
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
         <h1>Show All Patients</h1>
        <table>
            <tr>
                <th>Patient Id</th> <th>Patient Name</th> <th>Date of Birth</th> <th>Gender</th> <th>Address</th>                                                
            </tr>
            <%
              List<PatientAdd> record= (List<PatientAdd>)request.getAttribute("Details");
              for(PatientAdd s: record){
            %>
            <tr>
                <td><%=s.getPid()%></td>  <td><%=s.getPname()%></td> <td><%=s.getPdob()%></td> <td><%=s.getPgender()%></td>
                <td><%=s.getPaddress()%></td>  
            </tr>
            <%}%>
        </table>
    </body>
</html>
