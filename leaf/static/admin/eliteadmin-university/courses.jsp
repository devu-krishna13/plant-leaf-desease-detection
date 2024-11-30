<%-- 
    Document   : courses.jsp
    Created on : 24 Feb, 2017, 12:31:27 PM
    Author     : USER
--%>

<%@page import="com.connect.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><!DOCTYPE html>  
<html lang="en">

    <%@include file="header.jsp" %>
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Courses</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">      <ol class="breadcrumb">
                            <li><a href="#">Campus</a></li>
                            <li class="active">Courses</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                 <%
                connect c= new connect();
                c.search("select * from add_course");
                int j=1;
                while(j<10)
                {
                 %>
                 <div class="row">
                    
                    <!-- .col --> 
                    <%
                    int i=1;
                    while(i<4&&c.rs.next())
                  {
                   
                 %>
                   <div class="col-md-3 col-xs-12 col-sm-6">
                        <img class="img-responsive" alt="user" src="../plugins/images/big/c2.jpg">
                     <div class="white-box">
                            <h4><%=c.rs.getString(1)%></h4>
                            <div class="text-muted m-b-20">
                                <span class="m-r-10"><i class="ti-alarm-clock"></i>Since:<%=c.rs.getString(8)%></span>
                                <a class="text-muted m-l-10 m-r-10" href="#"><i class="fa fa-heart-o"></i> 38</a>
                                <span class="m-l-10"><i class="fa fa-usd"></i> <%=c.rs.getString(4)%></span> 
                            </div>
                            <p><span><i class="ti-alarm-clock"></i> Duration: <%=c.rs.getString(3)%></span></p>
                            <p><span><i class="ti-user"></i> Professor: <%=c.rs.getString(5)%></span></p>
                            <p><span><i class="fa fa-graduation-cap"></i> Start Date: <%=c.rs.getString(2)%></span></p>
                            <p><span><i class="fa fa-heart-o"></i> Department: <%=c.rs.getString(7)%></span></p>
                            <p><span><i class="ti-user"> More Details: <%=c.rs.getString(9)%></span></p>
                        <div class="row text-center m-t-10">
                          <a href="edit-course.jsp?stid=<%=c.rs.getString(1)%>"> <button type="button" class="btn btn-success btn-circle"><i class="fa fa-link"></i> </button></a>
                          <a href="deletecourse.jsp?stid=<%=c.rs.getString(1)%>">  <button type="button" class="btn btn-warning btn-circle"><i class="fa fa-times"></i> </button></a>
                        </div>
                      </div>
                   </div>                                       
                          <%
                               i++;
                              }
                           %>
                </div>
                 <%
                    j++;
                 }
                 %> 
                <!-- /.row -->
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
                                        <input id="checkbox2" type="checkbox" checked="" class="fxsdr">
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
            <!-- /.container-fluid -->
            <footer class="footer text-center">  B+ve Creationz Production @Designed by #Benjo#Akhil#Liji </footer>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>
