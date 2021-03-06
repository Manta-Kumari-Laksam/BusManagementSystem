<%@page import="modal.Insert"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>

<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Bus</title>
        <style>
            #btable
            {
                border: 1px solid black;
                font-size: 15px;
                position: relative;
                top: 30px;
                border-collapse:collapse;
            }
            #btable th , #btable td
            {
                padding: 5px 15px 5px 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%
            String val = request.getParameter("val");
            
            System.out.println(val);
            
            if(val==null || val.trim().equals("") )
            {
          
            }
            else
            {
                Configuration cf = null;
                SessionFactory sf = null;
                Session ses = null;

                try
                {
                    cf = new Configuration();
                    cf.configure("cfgPackage/bushibernate.cfg.xml");
                    sf = cf.buildSessionFactory();
                    ses = sf.openSession();
                    Transaction tx = ses.beginTransaction();
                   
                    Query query = ses.createQuery("from Insert where busno like '"+val+"%' ");
                    List<Insert> record = query.list();

                    
                    out.print("<center><table id='btable'>");
                    out.print("<tr><th>Sl No.</th><th>Operator</th><th>Bus Number</th><th>From</th><th>To</th></tr>");

                    int i = 1;
                    for(Insert ab : record )
                    {
                        out.print("<tr> <td>"+i+"</td>  <td>"+ab.getOperator()+"</td> <td>"+ab.getBusno()+"</td> <td>"+ab.getFrom1()+"</td> <td>"+ab.getTo1()+"</td></tr>");
                        i++;
                    }
                    
                    out.print("</table></center>");
                    tx.commit();
                }
                catch(Exception ee)
                {
                    System.out.println(ee);
                }
                finally
                {
                    ses.close();
                    sf.close();
                }
                }
        %>
    </body>
</html>