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
    <section class="home-slider owl-carousel" style="padding-bottom: 50px">
      <div class="slider-item" style="background-image: url('images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Book</h1>
              <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">See details about airlines between different source and destination. Happy Journey!</p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="#" class="btn btn-primary px-4 py-3">Search Availability</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item" style="background-image: url('images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Routes</h1>
              <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find all the airlines originating from the source airport to different destinations.</p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="route1.jsp" class="btn btn-primary px-4 py-3">Find Route</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item" style="background-image: url('images/bg_z.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">List of Airports</h1>
              <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Get airports listing City and Country Wise.</p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="cityCountry.jsp" class="btn btn-primary px-4 py-3">Get List</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item" style="background-image: url('images/bg_4.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Stats</h1>
              <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Get statistical data on the number of airports present in all over countries and cities.</p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="#" class="btn btn-primary px-4 py-3">Click to Know</a></p>
            </div>
          </div>
        </div>
      </div>

      
    </section>
    
    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_7.jpg);" data-stellar-background-ratio="0.5">
        <div class="container">
    		<div class="row d-flex align-items-center">
    			<div class="col-md-3 aside-stretch py-5">
                            <div class=" heading-section heading-section-white ftco-animate pr-md-4">
                                <h2 class="mb-3">Take a Look!</h2>
                                <p>Where will<br> tomorrow take<br> you?</p>
                            </div>
    			</div>
    			<div class="col-md-9 py-5 pl-md-5">
		    		<div class="row">
                                    <%                                        
                                        String HQL1 = "select id from airports";
                                        ResultSet rs1 = hadoop.cloudera.getData(HQL1);
                                        int airportCount=0,airlineCount=0;
                                        while(rs1.next()){
                                            airportCount++;
                                        }
                                        String HQL2 = "select id from airlines";
                                        ResultSet rs2 = hadoop.cloudera.getData(HQL2);
                                        while(rs2.next()){
                                            airlineCount++;
                                        }
                                    %>
                                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                      <div class="block-18">
                                        <div class="text">
                                          <strong class="number" data-number="115">0</strong>
                                          <span>Years ( Since 1903 )</span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                      <div class="block-18">
                                        <div class="text">
                                          <strong class="number" data-number="<%=airportCount%>">0</strong>
                                          <span>Total Airports</span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                      <div class="block-18">
                                        <div class="text">
                                          <strong class="number" data-number="<%=airlineCount%>">0</strong>
                                          <span>Total Airlines</span>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                      <div class="block-18">
                                        <div class="text">
                                            <strong class="number" data-number="24">0</strong><strong class="number">/</strong>
                                          <strong class="number" data-number="7">0</strong>
                                          <span>Available</span>
                                        </div>
                                      </div>
                                    </div>
                                </div>
		      </div>
	      </div>
    	</div>
    </section>
      
    <section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-3">Meet the Developers</h2>
          </div>
        </div>
        <div class="row">
        	<div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
      				<div class="img mb-4" style="background-image: url(images/person_5.JPG);"></div>
                                
      				<div class="info text-center">
      					<h3>Amit Kumar</h3>
      					<span class="position">APIs</span>
      					<div class="text">
	        				<ul class="ftco-social">
			              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			            </ul>
	        			</div>
      				</div>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
      				<div class="img mb-4" style="background-image: url(images/person_6.JPG);"></div>
      				<div class="info text-center">
      					<h3>Pratil Dubey</h3>
      					<span class="position">Hadoop</span>
      					<div class="text">
	        				<ul class="ftco-social">
			              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			            </ul>
	        			</div>
      				</div>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
      				<div class="img mb-4" style="background-image: url(images/person_7.JPG);"></div>
      				<div class="info text-center">
      					<h3><a href="teacher-single.html">Shubhangi Suman</a></h3>
      					<span class="position">Design</span>
      					<div class="text">
	        				<ul class="ftco-social">
			              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			            </ul>
	        			</div>
      				</div>
        		</div>
        	</div>
        	<div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
      				<div class="img mb-4" style="background-image: url(images/person_8.JPG);"></div>
      				<div class="info text-center">
      					<h3><a href="teacher-single.html">Sonal Sharma</a></h3>
      					<span class="position">Hive</span>
      					<div class="text">
	        				<ul class="ftco-social">
			              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			            </ul>
	        			</div>
      				</div>
        		</div>
        	</div>
        </div>
      </div>
    </section>

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