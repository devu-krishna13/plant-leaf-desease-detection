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
    <title>EYE-C Admin - Admin Dashboard</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <link href="../plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
       <!--alerts CSS -->
    <link href="../plugins/bower_components/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
 
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
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
                <div class="top-left-part"><a class="logo" href="index.jsp"><b><img src="../plugins/images/eliteadmin-logo.png" alt="home" /></b><span class="hidden-xs"><strong>EYE#C</strong> ADMIN</span></a></div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
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
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/1.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">I'M THE ADMIN</b> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li><a href="javascript:void(0)"><i class="ti-user"></i>  My Profile</a></li>
                            <li><a href="javascript:void(0)"><i class="ti-settings"></i>  Account Setting</a></li>
                            <li><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
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
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                        <!-- input-group -->
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
                            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
                            </span> </div>
                        <!-- /input-group -->
                    </li>
                    <li class="user-pro">
                        <a href="#" class="waves-effect"><img src="../plugins/images/users/1.jpg" alt="user-img" class="img-circle"> <span class="hide-menu">I'M THE ADMIN<span class="fa arrow"></span></span>
                        </a>
                        
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-envelope p-r-10"></i> <span class="hide-menu"> Mailbox <span class="fa arrow"></span><span class="label label-rouded label-danger pull-right">3</span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="inbox.jsp">FeedBacks</a></li>
                        </ul>
                    </li>
                    <li class="nav-small-cap m-t-10">--- Professional</li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-people p-r-10"></i> <span class="hide-menu"> Professors <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="professors.jsp">All Professors</a> </li>
                            <li> <a href="add-professor.html">Add Professor</a> </li>
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-graduation-cap p-r-10"></i> <span class="hide-menu"> Students <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="students.jsp">All Students</a> </li>                  
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-bars p-r-10"></i> <span class="hide-menu"> Courses <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="courses.jsp">All Courses</a> </li>
                            <li> <a href="add-course.html">Add Course</a> </li>
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
                           </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="icon-chart p-r-10"></i> <span class="hide-menu">Notification <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="add_notif.html"> add notification</a></li>
                            <li> <a href="view_notif.jsp">view notification</a></li>
                        </ul>
                    </li>
            <!--       <li class="nav-small-cap m-t-10">--- Support</li>
                    
                    <li> <a href="widgets.html" class="waves-effect"><i data-icon="P" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Widgets</span></a> </li>
                   <!-- <li><a href="login.html" class="waves-effect"><i class="icon-logout fa-fw"></i> <span class="hide-menu">Log out</span></a></li> -->
              
                </ul>
                
            </div>
        </div>
        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Edit Professor</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                         <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus</a></li>
                            <li class="active">Edit Professor</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
                
                   <% 
                       String id="";
              if(request.getParameter("stid")!=null)
              {
     id=request.getParameter("stid");
              }
                String f1="",f2="",f3="",f4="",f5="",f6="",f7="",f8="",f9="",f10="",f11="",f12="",f13="",f14="",f15="",f16=""; 
    try
    {
              connect c=new connect();
        c.search("select * from add_proff_main where Email='"+id+"'");
      
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
             f16 =c.rs.getString(16);
        }
    }catch(Exception e)
    {}
        %>
        
        
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title">Basic Information</h3>
                                <form class="form-material form-horizontal" method="post" action="../../EditproffMain">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title">Basic Information</h3>
                                <div class="form-material form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Name</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="example-text" name="t1" class="form-control" value="<%=f1%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="bdate">Date of Birth</span></label>
                                        <div class="col-md-12">
                                            <input type="date" id="bdate" name="t2" class="form-control mydatepicker" value="<%=f2%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Gender</label>
                                        <div class="col-sm-12">
                                            <select class="form-control" name="t3">
                                                <option value="<%=f3%>"><%=f3%></option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Profile Image</label>
                                        <div class="col-sm-12">
                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                            <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Select file</span> <span class="fileinput-exists">Change</span>
                                            <input type="file" name="t4"> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Department</label>
                                        <div class="col-sm-12">
                                            <select class="form-control" name="t5">
                                                <option value="<%=f5%>"><%=f5%></option>
                                                <option value="Computer">Computer</option>
                                                <option value="Mechanical">Mechanical</option>
                                                <option value="Electrical">Electrical</option>
                                                <option value="Medical">Medical</option>
                                                <option value="BCA/MCA">BCA/MCA</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="position">Position</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="position" name="t6" class="form-control" value="<%=f6%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Description</label>
                                        <div class="col-md-12">
                                            <textarea class="form-control" rows="3" name="t7"><%=f7%></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="url">Website URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="url" name="t8" class="form-control" value="<%=f8%>">
                                        </div>
                                    </div>
                                  <!--  <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="reset" class="btn btn-inverse waves-effect waves-light">Cancel</button>
                             -->
                                </div>   
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="white-box">
                                <h3 class="box-title">Account Information</h3>
                            <div class="form-material form-horizontal"> 
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-email">Email</span></label>
                                        <div class="col-md-12">
                                            <input type="email" id="example-email" name="t9" class="form-control" value="<%=f9%>">
                                            <input type="hidden" name="tx" value="<%=id%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-phone">Phone</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="example-phone" name="t10" class="form-control" value="<%=f10%>" data-mask="(999) 999-9999">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="pwd">Password</span></label>
                                        <div class="col-md-12">
                                            <input type="password" id="pwd" name="t11" class="form-control" value="<%=f11%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="cpwd">Confirm Password</span></label>
                                        <div class="col-md-12">
                                            <input type="password" id="cpwd" name="t12" class="form-control" value="<%=f12%>">
                                        </div>
                                    </div>
                                <!--    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="reset" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                               --> </div>
                            </div>
                        </div> 
                    
                        <div class="col-sm-6">
                            <div class="white-box">
                                <h3 class="box-title">Social Information</h3>
                                <div class="form-material form-horizontal" >
                                    <div class="form-group">
                                        <label class="col-md-12" for="furl">Facebook URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="furl" name="t13" class="form-control" value="<%=f13%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="turl">Twitter URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="turl" name="t14" class="form-control" value="<%=f14%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="gurl">Google Plus URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="gurl" name="t15" class="form-control" value="<%=f15%>">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="inurl">LinkedIN URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="inurl" name="t16" class="form-control" value="<%=f16%>">
                                        </div>
                                    </div>
                                        <div>
                                        <div class="white-box">
                            <h3 class="box-title">Success Message <small>(Click on image)</small></h3> <img src="../plugins/images/alert3.png" alt="alert" class="img-responsive model_img" id="sa-success">
                    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10" alt="alert" class="img-responsive model_img" id="sa-success">Submit</button>
                                    <button type="reset" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                                        </div>
                                </div>
                            </div>
                        </div> 
                    </div
                </form>
                                
                            </div>
                        </div> 
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
                <!-- /.container-fluid -->
                <footer class="footer text-center">  B+ve Creationz Production @Designed by #Benjo#Akhil#Liji  </footer>
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
        <!-- Date Picker Plugin JavaScript -->
        <script src="../plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
        // Date Picker
        jQuery('.mydatepicker').datepicker();
        </script>
            <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="js/custom.min.js"></script>
        <script src="js/jasny-bootstrap.js"></script>
        <script src="js/mask.js"></script>
        <!--Style Switcher -->
        <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>