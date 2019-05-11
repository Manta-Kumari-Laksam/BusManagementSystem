
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show all doctors</title>
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
         <h1>Show All Doctors</h1>
        <table>
            <tr>
                <th>Doctor Id</th> <th>Doctor Name</th>  <th>Gender</th> <th>Email</th> <th>Address</th>                                                
            </tr>
            <%
              List<DoctorAdd> record= (List<DoctorAdd>)request.getAttribute("Details");
              for(DoctorAdd s: record){
            %>
            <tr>
                <td><%=s.getDid()%></td>  <td><%=s.getDname()%></td> <td><%=s.getDgender()%></td> <td><%=s.getDemail()%></td>
                <td><%=s.getDaddress()%></td>  
            </tr>
            <%}%>
        </table>
    </body>
</html>
