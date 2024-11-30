<%-- 
    Document   : PerfomaceChart
    Created on : 23 Mar, 2019, 10:06:49 AM
    Author     : HP
--%>

<%@page import="com.connect.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@include file="header.jsp" %>
<%
    String dt=request.getParameter("dt");
    String dt1=request.getParameter("d1");
        String did=request.getParameter("did");

Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 connect c=new connect();
 String dpn="";
 c.search("SELECT randomforestresult.accuracy,department.Dept_name,file.date from randomforestresult inner join file on file.fildid=randomforestresult.fid inner JOIN department on department.Dept_id=file.did where file.date BETWEEN '"+dt+"' and '"+dt1+"' and department.Dept_id='"+did+"'");
//out.print("SELECT randomforestresult.accuracy,department.Dept_name from randomforestresult inner join file on file.fildid=randomforestresult.fid inner JOIN department on department.Dept_id=file.did where file.date BETWEEN '"+dt+"' and '"+dt1+"' and department.Dept_id='"+did+"'");
 while(c.rs.next())
{
   dpn=c.rs.getString(2);
 map = new HashMap<Object,Object>(); map.put("label", c.rs.getString(3)); map.put("y", c.rs.getDouble(1)); list.add(map);

}
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Department Level Prediction"
	},
	axisX: {
		title: "Date"
	},
	axisY: {
		title: "Total % of Department Catogary "
	},
	data: [{
		type: "column",
		yValueFormatString: "$#,##0.0# billion",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
    <div class="container-fluid">
         <div class="row bg-title">
             <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12" style="width:100% !important">
                        <h4 class="page-title">Predicted On   <%=dpn%> department</h4> </div>
                    
                    <!-- /.col-lg-12 -->
                    </div>
        <div class="row">
            <div class="white-box">
                
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
            </div>
        </div>
    </div>
<script src="canvasjs.min.js"></script>
<%@include file="Footer.jsp" %>
</body>
</html> 
