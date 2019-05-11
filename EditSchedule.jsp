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
            .insertForm{
                font-size: 20px;
                color: black;
            }
                .btn{
            border: none;
            background-color: #ffffcc;
            padding: 12px 24px;
            cursor: pointer;
            font-size: 15px;
            margin-left: 5px;
        }
        .input{
              width: 100%;
              padding: 10px 15px;
              margin: 8px 0px;
              border: 3px solid #ccc;
              box-sizing: border-box;
        }
        #form1{
            padding: 20px;
            background-image: url("pics/bg4.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            /*background-color: rgba(10,20,30,0);*/
        }
        #form2{
            background-color: powderblue;
            padding: 20px;
            position: absolute;
            top:200px;
        }
        </style>
    </head>
    <body>
        <h1 id="header">All Schedule</h1>
        <table id="tbl">
            <tr>
                <th>Operator</th> <th>Bus Number</th> <th>From</th> <th>To</th> <th>Driver</th> <th>Departure Time</th>
                <th>Arrival Time</th> <th>Bus Fare</th>  <th></th>   <th></th>                                          
            </tr>
            <%
              List<Insert> record= (List<Insert>)request.getAttribute("Details");
              for(Insert s: record){
            %>
            <tr>
                <td><%=s.getOperator()%></td>  <td><%=s.getBusno()%></td> <td><%=s.getFrom1()%></td> <td><%=s.getTo1()%></td>
                <td><%=s.getDriver()%></td>  <td><%=s.getDeparture()%></td> <td><%=s.getArrival()%></td> <td><%=s.getFare()%></td>
                <td><input type="button" value="Edit" id="editbtn" onclick="editFunc()"></td>
                <td><input type="button" value="Delete" id="deletebtn" onclick="deleteFunc()"></td>
            </tr>
            <%}%>
        </table>

        <h1 id="header2" style="display:none">Edit Schedule</h1>
        <div id="form1" style="display:none">
            <form class="insertForm" action="EditServlet" method="post" onsubmit="return valid()">
                Operator<input type="text" name="operator" class="input"><br>
                Bus no.<input type="text" name="busno" class="input">  <br>
                <h2>Route</h2>
                From<input type="text" name="from" class="input">  <br>
                To<input type="text" name="to" class="input">     <br>           
                Driver<input type="text" name="driver" class="input"><br>
                Departure<input type="text" name="departure" class="input"><br>
                Arrival<input type="text" name="arrival" class="input"><br>
                Fare<input type="text" name="fare" class="input"><br>
                <input type="submit" value="Update" class="btn" style="padding: 10px 50px;"><br>
            </form>
        </div>
        
        <div id="form2" style="display:none">
           <form class="insertForm" action="DeleteServlet" method="post">
            Enter BusID: <input type="text" name="busid" class="input"> 
            <input type="submit" value="Delete" class="btn" style="padding: 10px 50px;"><br>
           </form>
        </div>
        
          <script type="text/javascript">
        function valid(){
            var flag=true;
            var op = document.forms["insertForm"]["operator1"].value;
            var busno=document.forms["insertForm"]["busno1"].value;
            if(op==""){
                alert("Operator name cannot be empty");
                flag=false;
            }
            if(busno==""){
                alert("Bus no cannot be empty");
                flag=false;
            }
            return flag;
        }
        
        function editFunc(){
            document.getElementById("header").style.display="none";
            document.getElementById("tbl").style.display="none";
            document.getElementById("form1").style.display="block";
            document.getElementById("header2").style.display="block";
            document.body.style.backgroundImage="url('pics/p2.jpg')";
        }
        function deleteFunc(){
            document.getElementById("header").style.display="none";
            document.getElementById("tbl").style.display="none";
            document.getElementById("form1").style.display="none";
            document.getElementById("header2").style.display="none";
            document.getElementById("form2").style.display="block";
            document.body.style.backgroundImage="url('pics/p2.jpg')";
        }
      </script>
            
    </body>
</html>
