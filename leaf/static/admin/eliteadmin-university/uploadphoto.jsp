<%-- 
    Document   : UploadPhoto
    Created on : Feb 23, 2016, 2:49:13 PM
    Author     : S17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Upload Photo Here..</h1>
        <%
        session.setAttribute("staff",request.getParameter("stid"));
        
        %>
        <form action="../../UploadImage" method="post" enctype="multipart/form-data" name="form1">
          <table width="100%" border="0">
            <tr>
              <th scope="row">Upload Photo</th>
              <td><label for="f"></label>
              <input type="file" name="img" id="f"></td>
            </tr>
            <tr>
              <th scope="row">&nbsp;</th>
              <td><input type="submit" name="button" id="button" value="Finished"></td>
            </tr>
            <tr>
              <th scope="row">&nbsp;</th>
              <td>&nbsp;</td>
            </tr>
          </table>
        </form>
        
    </body>
</html>

