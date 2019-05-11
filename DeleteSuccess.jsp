<%-- 
    Document   : DeleteSuccess
    Created on : 1 Apr, 2019, 10:35:22 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: black;
                display: flex;
                justify-content: center;
                align-items: center;
                color:white;
            }
            h1{
                position: absolute;
                top:200px;
            }
        </style>
    </head>
    <body>
        <h1>
        <%String str=(String)request.getSession().getAttribute("info");%>
        <%=str%>
        </h1>
    </body>
</html>
