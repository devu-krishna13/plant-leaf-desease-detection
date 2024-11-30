<%@page import="com.connect.connect"%>
<!DOCTYPE html>  
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Staff DashBoard- EYE@C</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!--My admin Custom CSS -->
    <link href="../plugins/bower_components/owl.carousel/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../plugins/bower_components/owl.carousel/owl.theme.default.css" rel="stylesheet" type="text/css" />
    
    <!-- morris CSS -->
    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default-dark.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="index.jsp"><b><img src="../plugins/images/eliteadmin-logo.png" alt="home" class="dark-logo" />  <img src="../plugins/images/eliteadmin-logo-dark.png" alt="home" class="light-logo" /></b><span class="hidden-xs"><strong>STAFF</strong>ROOM<img src="../plugins/images/eliteadmin-text-dark.png" alt="home" class="light-logo" /></span></a></div>
               <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                    <li>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li class="dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="icon-envelope"></i>
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>                     
                        <!-- /.dropdown-messages -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="icon-note"></i>
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <!-- .Megamenu -->
                    <li class="mega-dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><span class="hidden-xs">STAFF</span> <i class="icon-options-vertical"></i></a>
                        
                    </li>
                    <!-- /.Megamenu -->
                    <li class="right-side-toggle"> <a class="waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse slimscrollsidebar">
                <div class="user-profile">
                    <div class="dropdown user-pro-body">
                        <div><img src="../plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"></div> <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">I'm Staff<span class="caret"></span></a>
                        <ul class="dropdown-menu animated flipInY">
                            <li><a href="#"><i class="ti-user"></i> My Profile</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"><i class="ti-settings"></i> Account Setting</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                        <!-- input-group -->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
            </span> </div>
                        <!-- /input-group -->
                    </li>
                    

   <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-envelope p-r-10"></i> <span class="hide-menu"> MessageBox <span class="fa arrow"></span><span class="label label-rouded label-danger pull-right">3</span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="inbox.jsp">Attendance Reply</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-small-cap m-t-10">--- Professional</li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-people p-r-10"></i> <span class="hide-menu"> Professors <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="professors.jsp">All Professors</a> </li>
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-graduation-cap p-r-10"></i> <span class="hide-menu"> Students <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="students.jsp">All Students</a> </li>
                            <li> <a href="add-student.jsp">Add Student</a> </li>
                        </ul>
                    </li>
                   
                     <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-book p-r-10"></i> <span class="hide-menu"> Attendance <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="attendance.jsp">Attendance Sheet</a></li>
                            <li> <a href="add-attendance.jsp">Add Day Attendance</a></li>
                        </ul>
                    </li>           
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-building p-r-10"></i> <span class="hide-menu"> Scoresheets <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="scores.jsp">All Scores</a></li>
                            <li> <a href="add-score.html">Add Score</a></li>
                           </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-chart p-r-10"></i> <span class="hide-menu">Notifications <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="view_notif.jsp">View Notifications</a></li>
                            <li> <a href="add_notif.jsp">Add Notifications</a></li>
                           <!-- <li> <a href="expense-report.html">Yet to write</a></li>-->
                        </ul>
                    </li>
                 </ul>
            </div>
        </div>
          <div id="page-wrapper">
        <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Student Profile</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">        <ol class="breadcrumb">
                            <li><a href="#">Campus</a></li>
                            <li class="active">Student Profile</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                  <% 
                       String id="";
              if(request.getParameter("stid")!=null)
              {
     id=request.getParameter("stid");
              }
              out.println(id);
                String f1="",f2="",f3="",f4="",f5="",f6="",f7="",f8="",f9="",f10="",f11="",f12="",f13="",f14="",f15=""; 
    try
    {
              connect c=new connect();
        c.search("select * from add_stud_main where Email_Stud='"+id+"'");
      
        if(c.rs.next())
        {
           f1 =c.rs.getString(1);
           f2 =c.rs.getString(2);
            f3=c.rs.getString(3);
             f4 =c.rs.getString(4);
             f5 =c.rs.getString(5);
           f6 =c.rs.getString(6);
            f7 =c.rs.getString(7);
             f8 =c.rs.getString(8);
             f9 =c.rs.getString(9);
           f10 =c.rs.getString(10);
            f11 =c.rs.getString(11);
             f12 =c.rs.getString(12);
             f13 =c.rs.getString(13);
           f14 =c.rs.getString(14);
            f15 =c.rs.getString(15);
        }
    }catch(Exception e)
    {}
        %>
            
                    <div class="col-md-4 col-xs-12">
                               <div class="white-box">                          
                            <div class="user-bg"> <img width="100%" alt="user" src="../../<%=f4%>"> </div>
                            <div class="user-btm-box">
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <strong>Name</strong>
                                        <p><%=f1%></p>
                                    </div>
                                      <hr>
                                    <div class="row text-center m-t-10"><strong>Year & Department</strong>
                                        <p><%=f6%>,<%=f5%></p>
                                    </div>
                                <hr>
                                    <div class="row text-center m-t-10"><strong>Date Of Birth</strong>
                                        <p><%=f3%></p>
                                    </div>
                               
                                <!-- /.row -->
                                <hr>
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <strong>Email ID</strong>
                                    <p><%=f8%></p></div>
                                      <hr>
                                       <div class="row text-center m-t-10">
                                   <strong>Phone</strong>
                                        <p><%=f9%></p>
                                    
                                </div>
                                <!-- /.row -->
                                
                                <!-- /.row -->
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-purple"><i class="ti-facebook"></i></p>
                                    <h4><a href="<%=f13%>">FACEBOOK</a></h4></div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-blue"><i class="ti-twitter"></i></p>
                                   <h4><a href="<%=f14%>">TWITTER</a></h4></div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-danger"><i class="ti-google"></i></p>
                                    <h4><a href="<%=f15%>">GOOGLE+</a></h4> </div>
                                <hr>
                                <div class="row text-center m-t-10">
                                    <form action="http://localhost:8080/EYE_C_TEST/DelStudMain" method="post"> 
                                        <input type="hidden" name="tx" value="<%=f8%>">
                                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Drop Student..?</button>
                                    </form>                                   
                                </div>
                                <!-- .row -->
                                <hr>
                            </div>
                        </div>
                    </div>
                <!-- /.row -->
                <!-- .right-sidebar -->
            </div>
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
                                <li><a href="javascript:void(0)" theme="default-dark" class="default-dark-theme working">7</a></li>
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
    <!--weather icon -->
    <script src="../plugins/bower_components/skycons/skycons.js"></script>
    <!--Counter js -->
    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>
      <!-- jQuery for carousel -->
    <script src="../plugins/bower_components/owl.carousel/owl.carousel.min.js"></script>
    <script src="../plugins/bower_components/owl.carousel/owl.custom.js"></script>
   
    <!--Morris JavaScript -->
    <script src="../plugins/bower_components/raphael/raphael-min.js"></script>
    <script src="../plugins/bower_components/morrisjs/morris.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard4.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="../plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
    <!--Style Switcher -->
<script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>