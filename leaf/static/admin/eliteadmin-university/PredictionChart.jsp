<%-- 
    Document   : PredictionChart
    Created on : 23 Mar, 2019, 10:20:23 AM
    Author     : HP
--%>
  <script src="js/jquery.min.js"></script>
<script> $(document).ready(function()
            {
        $("#bt").click(function(){
            //alert("Sdsd");
 // $("#vv").load("PerfomaceChart.jsp?dt="+$("#dt").val()+"&d1="+$("#d1").val()+"&did="+$("#di").val(), function(responseTxt, statusTxt, xhr){
   location.href="PerfomaceChart.jsp?dt="+$("#dt").val()+"&d1="+$("#d1").val()+"&did="+$("#di").val();
    
  });
});
 

</script>
<%@page import="com.connect.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@include file="header.jsp" %>
           <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Add Department</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">           <ol class="breadcrumb">
                            <li><a href="index.jsp">Campus Mode</a></li>
                            <li class="active">Add Staff</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
                               <form class="form-material form-horizontal" method="post" >
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                            
                                <div class="form-material form-horizontal">
                                    
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Select Department </span></label>
                                        <div class="col-md-12">
                                             <select class="form-control" name="t5" id="di">
                                             <%
                                             connect c=new connect();
                                             c.search("select * from department");
                                             while(c.rs.next())
                                             {

                                                 %>
                                                 <option value="<%=c.rs.getString(1)%>"><%=c.rs.getString(2)%></option>
                                                <%
                                             }%>
                                            </select>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-12" for="example-text">From Date </span></label>
                                        <div class="col-md-12">
                                            <input type="date" id="dt" name="d" class="form-control">
                                        </div>
                                    </div>
                                              <div class="form-group">
                                        <label class="col-md-12" for="example-text">To Date </span></label>
                                        <div class="col-md-12">
                                            <input type="date" id="d1" name="d1" class="form-control">
                                        </div>
                                    </div>
                                     <div class="form-group">
                                    
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-info waves-effect waves-light m-r-10" id="bt">Submit</button>
                                    <button type="reset" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                                
                               
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
                       
                    
                        
                            <div class="white-box">
                             
                                <div class="form-material form-horizontal" id="vv" >
                                  
                                   
                                  
                                  
                                     
                                </div>
                            </div>
                       
                    
                    </div>
                </form>
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
