<!DOCTYPE html>
<%@include file="header.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.lang.String"%>
<html lang="en">
  <head>
    <title>Routes & Airports</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./css/animate.css">
    
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./css/magnific-popup.css">

    <link rel="stylesheet" href="./css/aos.css">

    <link rel="stylesheet" href="./css/ionicons.min.css">

    <link rel="stylesheet" href="./css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="./css/flaticon.css">
    <link rel="stylesheet" href="./css/icomoon.css">
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>      
      <section class="ftco-intro" style="margin-top: 50px; margin-left: 250px ">
    	<div class="container">
            <div class="row no-gutters">
                <div class="col-md-3 color-3">
                    <h3 class="mb-4" style="font-family: courier new;"><b><center>AIRPORT</center></b></h3>
                </div>|
                <div class="col-md-3 color-3">
                    <h3 class="mb-4" style="font-family: courier new;"><b><center>SOURCE</center></b></h3>                   
                </div>|
                <div class="col-md-3 color-3">
                    <h3 class="mb-4" style="font-family: courier new;"><b><center>DESTINATION</center></b></h3>                   
                </div>
            </div>
    	</div>
        <%
            String s = request.getParameter("source");
            session.setAttribute("source",s);
            s=s.substring(0,3);
            String HQL1 = "select latitude,longitude from airports where iata='" + s + "'";
            ResultSet rs1 = hadoop.cloudera.getData(HQL1);
            String mapurl="https://maps.googleapis.com/maps/api/staticmap?size=1200x700";
            String path="&path=color:0x0000ff|geodesic:true|weight:5";
            String fPath="";
            if(rs1.next()){
                String lat = rs1.getString(1);
                String longi= rs1.getString(2);
                mapurl=mapurl+"&markers=size:medium|color:yellow|label:S|"+lat+","+longi;
                path=path+"|"+lat+","+longi;
        %>
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-3 color-1">
                    <span class="phone-number"><font style="padding-left: 15px"><%=s%></font></span>
                </div>|
                <div class="col-md-3 color-2">
                    <span class="phone-number"><font style="padding-left: 15px"><%=lat%></font></span>                   
                </div>|
                <div class="col-md-3 color-2">
                    <span class="phone-number"><font style="padding-left: 15px"><%=longi%></font></span>                   
                </div>
            </div>
    	</div>
        <%
            }
        %>
        <%
            String HQL2 = "select destination from routes where source='" + s + "'";
            ResultSet rs2 = hadoop.cloudera.getData(HQL2);
            mapurl=mapurl+"&markers=color:red|label:D";
            while(rs2.next()){
                String des = rs2.getString(1);
                des = des.replaceAll(" ", "");
                String HQL3 = "select latitude,longitude from airports where iata='" + des + "'";
                ResultSet rs3 = hadoop.cloudera.getData(HQL3);
                if(rs3.next()){
                    String lat2 = rs3.getString(1);
                    String longi2= rs3.getString(2);
                    mapurl=mapurl+"|"+lat2+","+longi2;
                    fPath=fPath+path+"|"+lat2+","+longi2;
                    
        %>
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-3 color-1 ">
                    <span class="phone-number"><font style="padding-left: 15px"><%=des%></font></span>
                </div>|
                <div class="col-md-3 color-2">
                    <span class="phone-number"><font style="padding-left: 15px"><%=lat2%></font></span>
                </div>|
                <div class="col-md-3 color-2">
                    <span class="phone-number"><font style="padding-left: 15px"><%=longi2%></font></span>                   
                </div>
            </div>
    	</div>
        <%
                }
            }
            String sendG=mapurl+fPath+"&key=AIzaSyAibC6vsEBjWpt2CvB_EoOoPX9w8i46Evc";
        %>
    </section>
    <div style="align-content: center">
        <center><img src="<%=sendG%>" vspace="50px"></center>
    </div>
  <script src="./js/jquery.min.js"></script>
  <script src="./js/jquery-migrate-3.0.1.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/jquery.easing.1.3.js"></script>
  <script src="./js/jquery.waypoints.min.js"></script>
  <script src="./js/jquery.stellar.min.js"></script>
  <script src="./js/owl.carousel.min.js"></script>
  <script src="./js/jquery.magnific-popup.min.js"></script>
  <script src="./js/aos.js"></script>
  <script src="./js/jquery.animateNumber.min.js"></script>
  <script src="./js/bootstrap-datepicker.js"></script>
  <script src="./js/jquery.timepicker.min.js"></script>
  <script src="./js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
    
  </body>
</html>