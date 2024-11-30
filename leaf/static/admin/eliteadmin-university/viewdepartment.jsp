<%-- 
    Document   : viewdepartment
    Created on : 15 Mar, 2019, 2:46:41 PM
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
        <%@include file="header.jsp" %>
        <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">View Department</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">           <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus Mode</a></li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
            <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <table class="table table-condensed">
            <tr><th>department id</th>
            <th>department name</th></tr>
            
            
            <%
                connect c1=new connect();
                c1.search("select * from department");
                while(c1.rs.next())
                {%>
                <tr><td>  <%=c1.rs.getString(1) %></td>
                    <td>  <%=c1.rs.getString(2) %></td>   <td>  <a href="../../deletedepartment?id=<%=c1.rs.getString(1)%>" >Delete</a></td></tr>
             <%   }                
                %>
                
       </table>
        
                            </div></div></div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
