<%-- 
    Document   : behaviorprediction
    Created on : Oct 25, 2019, 10:17:19 AM
    Author     : User
--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@page import="com.rf.categ.DescribeTreesCateg"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.io.File"%>
<%@page import="com.connect.connect"%>
<%@page import="com.admin.studentMinig"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
.checked {
  color: #d4af37;
}
</style>
    </head>
    <body> <%@include file="header.jsp" %>
        <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Add Staff</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">           <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus Mode</a></li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
          <div class="white-box">
              <form action="../../Store"  method="post">
        <table class="table table-bordered">
            <tr><td colspan="4"><button class="btn btn-danger">Click Here to Save Result</button><td></td></tr>
            <tr><td>Student</td>
   <%
       String did=request.getParameter("did");
        %>
            <input type="hidden" name="did" value="<%=did%>"/>
   <%
       String root = getServletContext().getRealPath("/");
                            root=root.replace("build\\", "");
                            //out.print(root);
                            File path = new File(root + "/Dataset");
                          
       connect c=new connect();
       c.search("select * from attendence where staff in(select email from add_proff_main where Department='"+did+"')"  );
  
       if(c.rs.next())
   {
       
      String testdata=path+"/"+c.rs.getString("file");
      studentMinig.testdata=testdata;
       studentMinig.init(testdata);
          DescribeTreesCateg DT = new DescribeTreesCateg(testdata);
		 ArrayList<ArrayList<String>> Train= DT.CreateInputCateg(testdata);
	Iterator it=Train.iterator();
    int ct=0;
    int i=0;
    int avg=0;
    connect cx=new connect();
     cx.search("select * from fecility where staff in(select email from add_proff_main where Department='"+did+"') ");
     int ctt=0;
     int sc=0;
     while(cx.rs.next())
     {
         ctt++;
         sc=sc+cx.rs.getInt(4);
         //out.print("<td>"+cx.rs.getString(2)+"</td>");
     }
     
     out.print("<td>TotalScore</td><td>Maximum</td><td>Total Days</td><td>Status</td>");
     out.print("</tr>");
     cx.con.close();
     int u=0;
    while(it.hasNext())
    {
        out.print("<tr>");
    
     u++;
     if(u>50)
         break;
    ArrayList<String>y=(ArrayList<String>) it.next();
    %>
            <input type="hidden" name="adm" value="<%=y.get(0)%>"/>
   <%
    out.print("<td>"+y.get(0)+"</td>");
/*for(int j=2;j<ctt;j++)
{
out.print("<td>"+y.get(j)+"</td>");
}*/
String v=studentMinig.getvalue(y.get(0));

if(!v.contains("-"))
{}
else
{
    String vv[]=v.split("-");
  
    int ss=(vv[1].equals("0"))?sc:sc*Integer.parseInt(vv[1]);
    int p=(Integer.parseInt(vv[0])*100/ss);
  // out.print(vv[0]+"*100/"+"-"+ss+"="+p+"<br>");
   String status="";
    %>
            <input type="hidden" name="sc" value="<%=p%>"/>
   <%
    if(p>=90)
    {
    status="<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span>";
    }
    else if(p>=60)
    {
            status="<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star'></span>";

}
    else if(p>=40)
    {
            status="<span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star checked'></span><span class='fa fa-star' checked></span><span class='fa fa-star'></span>";

}
    else if(p>=10)
    {
            status="<span class='fa fa-star checked'></span><span class='fa fa-star '></span><span class='fa fa-star '></span><span class='fa fa-star' checked></span><span class='fa fa-star'></span>";

}
    else
    {
                status="<span class='fa fa-star '></span><span class='fa fa-star '></span><span class='fa fa-star '></span><span class='fa fa-star' checked></span><span class='fa fa-star'></span>";

    }
out.print("<td>"+vv[0]+"</td><td>"+sc+"</td><td>"+vv[1]+"</td><td>"+status+"</td>");
        }

    }
      out.print("</tr><tr>"); 
   }
       
   c.con.close();
   %>
        </table>
              </form>
          </div>
         <!-- .right-sidebar -->
                    <div class="right-sidebar">
                        <div class="slimscrollright">
                            <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                            <div class="r-panel-body">
                                <ul>
                                    <li><b>Layout Options</b></li>
                                    <li>
                                        <div class="checkbox checkbox-info">
                                            <input id="checkbox1" type="checkbox" class="fxhdr">
                                            <label for="checkbox1"> Fix Header </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-warning">
                                            <input id="checkbox2" type="checkbox" class="fxsdr">
                                            <label for="checkbox2"> Fix Sidebar </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox4" type="checkbox" class="open-close">
                                            <label for="checkbox4"> Toggle Sidebar </label>
                                        </div>
                                    </li>
                                </ul>
                                <ul id="themecolors" class="m-t-20">
                                    <li><b>With Light sidebar</b></li>
                                    <li><a href="javascript:void(0)" theme="default" class="default-theme">1</a></li>
                                    <li><a href="javascript:void(0)" theme="green" class="green-theme">2</a></li>
                                    <li><a href="javascript:void(0)" theme="gray" class="yellow-theme">3</a></li>
                                    <li><a href="javascript:void(0)" theme="blue" class="blue-theme working">4</a></li>
                                    <li><a href="javascript:void(0)" theme="purple" class="purple-theme">5</a></li>
                                    <li><a href="javascript:void(0)" theme="megna" class="megna-theme">6</a></li>
                                    <li><b>With Dark sidebar</b></li>
                                    <br/>
                                    <li><a href="javascript:void(0)" theme="default-dark" class="default-dark-theme">7</a></li>
                                    <li><a href="javascript:void(0)" theme="green-dark" class="green-dark-theme">8</a></li>
                                    <li><a href="javascript:void(0)" theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                    <li><a href="javascript:void(0)" theme="blue-dark" class="blue-dark-theme">10</a></li>
                                    <li><a href="javascript:void(0)" theme="purple-dark" class="purple-dark-theme">11</a></li>
                                    <li><a href="javascript:void(0)" theme="megna-dark" class="megna-dark-theme">12</a></li>
                                </ul>
                                <ul class="m-t-20 chatonline">
                                    <li><b>Chat option</b></li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/genu.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/arijit.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/govinda.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/hritik.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/john.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/pawandeep.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.right-sidebar -->
                </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
