<%-- 
    Document   : Prediction
    Created on : 22 Mar, 2019, 2:00:57 PM
    Author     : HP
--%>

<%@page import="com.connect.connect"%>
<%@page import="java.io.File"%>
<%@page import="com.rf.categ.MainRunCateg"%>
<%@page import="com.rf.fast.MainRun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <body>
         <%@include file="header.jsp" %>
           <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Prediction Result</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">           <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus Mode</a></li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
      <div class="white-box">
   <%try
   {
        connect c=new connect();
        c.search("select file.*,department.* from file inner join department on department.Dept_id=file.did where date between '"+request.getParameter("d1")+"' and '"+request.getParameter("dt")+"' and department.Dept_id='"+request.getParameter("did")+"'");
    // out.print("select file.*,department.* from file inner join department on department.Dept_id=file.did where date between '"+request.getParameter("d1")+"' and '"+request.getParameter("d1")+"' and department.Dept_id='"+request.getParameter("did")+"'");
     
        while(c.rs.next())
        {
             c.save("delete from table randomforestresult where fid='"+c.rs.getString(1)+"'");
            %>
           <h4>Prediction For:<%=c.rs.getString("Dept_name")%>;</h4>
                   <%
    String root = getServletContext().getRealPath("/");
                            root=root.replace("build\\", "");
                            //out.print(root);
                            File path = new File(root + "/File"); 
                            String f=path+"/"+c.rs.getString(5);try
       {
   MainRunCateg.testdata=f;
  // out.print( MainRunCateg.testdata);
   MainRunCateg.main(null);
   out.println("<p>total DataSet size is"+MainRunCateg.a+"</p>");
      out.println("<p>number of attributes"+MainRunCateg.b+"</p>");
         out.println("<p>number of selected attributes"+MainRunCateg.c+"</p>"); 
          out.println("<p>total Test Case:"+MainRunCateg.totcase+"</p>");
         out.println("<p>The Result of Predictions :-"+MainRunCateg.e+"</p>");  
          out.println("<p>Accuracy :-"+MainRunCateg.f+"% </p>");
            out.println("<p>"+MainRunCateg.f+"% Students Logined on "+c.rs.getString("date")+" </p>");
          c.save("insert into randomforestresult values(0,'"+MainRunCateg.a+"','"+MainRunCateg.b+"','"+MainRunCateg.c+"','"+MainRunCateg.totcase+"','"+MainRunCateg.e+"','"+MainRunCateg.f+"','"+c.rs.getString(1)+"')");
       }catch(Exception e)
       {
       out.println("<p>"+e+"</p>");
       }
                            %>
                              <a href="ViewData.jsp?path=<%=f%>">View Data</a>
                            <hr>       
            <%
        }
        c.con.close();
   }catch(Exception e)
   {
   out.print(e);
   }
   %>
               </div>
 
   <%@include file="Footer.jsp" %>
</html>
