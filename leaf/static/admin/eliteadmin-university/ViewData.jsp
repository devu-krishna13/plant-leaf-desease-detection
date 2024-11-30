<%-- 
    Document   : ViewData
    Created on : 22 Mar, 2019, 6:50:51 PM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.*"%>
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
                        <h4 class="page-title">Add Staff</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">           <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus Mode</a></li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
          <div class="white-box">
        <Table class="table table-bordered"><tr><td>Slno</td><td>Card No</td><td>Time</td><Td></Td></tr>
        <%
        String sCurrentLine;
	BufferedReader	BR = new BufferedReader(new FileReader(request.getParameter("path")));
		
		while ((sCurrentLine = BR.readLine()) != null) {
                    out.println("<tr>");
			ArrayList<Integer> Sp=new ArrayList<Integer>();int i;
			if(sCurrentLine!=null){
				if(sCurrentLine.indexOf(",")>=0){
					//has comma
					
					sCurrentLine=","+sCurrentLine+",";
					char[] c =sCurrentLine.toCharArray();
					for(i=0;i<sCurrentLine.length();i++){
						if(c[i]==',')
							Sp.add(i);
					}ArrayList<String> DataPoint=new ArrayList<String>();
					for(i=0;i<Sp.size()-1;i++){
						out.println("<td>"+sCurrentLine.substring(Sp.get(i)+1, Sp.get(i+1)).trim()+"</td>");
					}//System.out.println(DataPoint);
				}
				else if(sCurrentLine.indexOf(" ")>=0){
					//has spaces
					sCurrentLine=" "+sCurrentLine+" ";
					for(i=0;i<sCurrentLine.length();i++){
						if(Character.isWhitespace(sCurrentLine.charAt(i)))
							Sp.add(i);
					}ArrayList<String> DataPoint=new ArrayList<String>();
					for(i=0;i<Sp.size()-1;i++){
						out.println("<td>"+sCurrentLine.substring(Sp.get(i), Sp.get(i+1)).trim()+"</td>");
					}//System.out.println(DataPoint);
				}
			}
                                       out.println("</tr>");
     
		}
        %>
        </table>
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

    </body>
</html>
