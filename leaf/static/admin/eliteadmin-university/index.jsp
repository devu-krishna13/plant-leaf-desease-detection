<!DOCTYPE html>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
if(session.getAttribute("uname")==null)
{
response.sendRedirect("../../publichome.jsp");

}else
{
%>
<%@include file="header.jsp" %>
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">ADMIN Dashboard</h4> </div>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Campus Mode</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- .row -->
                <div class="row">
                    
                   
                  
                  </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row">
                    
                </div>
                 
                 <!--   <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <h3 class="box-title">Weather</h3>
                            <div class="weather-box">
                                <div class="weather-top">
                                    <h2 class="pull-left">Monday <br>
                  <small>7th May 2016</small></h2>
                                    <div class="today_crnt pull-right">
                                        <canvas class="sleet" width="44" height="44"></canvas> <span>32<sup>°F</sup></span> </div>
                                </div>
                                <div class="weather-info">
                                    <h5 class="font-bold">Weather info</h5>
                                    <div class="row">
                                        <div class="col-xs-6 p-r-10">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="pull-left">Wind</p>
                                                    <p class="pull-right font-bold">16km/h</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="pull-left">Sunrise</p>
                                                    <p class="pull-right font-bold">05:20</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="pull-left">Humanfeel</p>
                                                    <p class="pull-right font-bold">32 <sup>°F</sup></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 p-l-10">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="pull-left">Sunset</p>
                                                    <p class="pull-right font-bold">21:05</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="pull-left">Pressure </p>
                                                    <p class="pull-right font-bold">22 in</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="weather-time">
                                    <ul class="list-unstyled weather-days row">
                                        <li class="col-xs-4 col-sm-2"><span>Tue</span>
                                            <canvas class="sleet" width="30" height="30"></canvas> <span>32<sup>°F</sup></span></li>
                                        <li class="col-xs-4 col-sm-2"><span>Wed</span>
                                            <canvas class="clear-day" width="30" height="30"></canvas> <span>34<sup>°F</sup></span></li>
                                        <li class="col-xs-4 col-sm-2"><span>Thu</span>
                                            <canvas class="partly-cloudy-day" width="30" height="30"></canvas> <span>35<sup>°F</sup></span></li>
                                        <li class="col-xs-4 col-sm-2"><span>Fri</span>
                                            <canvas class="cloudy" width="30" height="30"></canvas> <span>34<sup>°F</sup></span></li>
                                        <li class="col-xs-4 col-sm-2"><span>Sat</span>
                                            <canvas class="snow" width="30" height="30"></canvas> <span>30<sup>°F</sup></span></li>
                                        <li class="col-xs-4 col-sm-2"><span>Sun</span>
                                            <canvas class="wind" width="30" height="30"></canvas> <span>26<sup>°F</sup></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>              -->

                <!-- /.row -->
                <div class="row">
                   
                   
                 
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
                                <li><a href="javascript:void(0)" theme="blue" class="blue-theme">4</a></li>
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
                           
                        </div>
                    </div>
                </div>
                <!-- /.right-sidebar -->
            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> B+ve Creationz Production @Designed by #Benjo#Akhil#Liji </footer>
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
    <!--Morris JavaScript -->
    <script src="../plugins/bower_components/raphael/raphael-min.js"></script>
    <script src="../plugins/bower_components/morrisjs/morris.js"></script>
     <!--weather icon -->
    <script src="../plugins/bower_components/skycons/skycons.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="../plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard1.js"></script>
    
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    
    
    
    
   
</body>

</html>
<%}%>