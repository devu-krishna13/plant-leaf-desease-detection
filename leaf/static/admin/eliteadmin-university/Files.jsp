<%-- 
    Document   : Files
    Created on : 21 Mar, 2019, 10:22:09 PM
    Author     : HP
--%>

<%@page import="com.connect.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <Table class="table table-bordered"><tr><td>Fileid</td><td>Tiltle</td><td>details</td><td>File Name</td></tr>
        <%
        connect c=new connect();
        c.search("select * from file where date between '"+request.getParameter("dt")+"' and '"+request.getParameter("d1")+"' and did='"+request.getParameter("did")+"'");
       // out.print("select * from file where date between '"+request.getParameter("dt")+"' and '"+request.getParameter("d1")+"' and did='"+request.getParameter("did")+"'");
        while(c.rs.next())
        {
        %>
        
        <Tr>
            <td>
                <%=c.rs.getString(1)%>
            </td>
       
     
            <Td>
                <%=c.rs.getString(2)%>
            </Td>
        
   
            <Td>
                <%=c.rs.getString(4)%>
            </Td>
            
            <Td>
                <%=c.rs.getString(5)%>
            </Td>
              
        </Tr>
        <%
        }
        %>
        <tr><Td colspan="4">
                  <button type="button" onclick="pre('<%=request.getParameter("dt")%>','<%=request.getParameter("d1")%>','<%=request.getParameter("did")%>')">Process Data</button>
            </Td></tr>
        </table>
    </body>
</html>
