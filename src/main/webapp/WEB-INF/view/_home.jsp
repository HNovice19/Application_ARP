<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
Template Name: BRILLIANT Bootstrap Admin Template
Version: 4.5.6
Author: WebThemez
Website: http://www.webthemez.com/
-->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>BRILLIANT Free Bootstrap Admin Template - WebThemez</title>
    <!-- Bootstrap Styles-->
    <link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="resources/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="resources/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="resources/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="resources/assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>
    <div id="wrapper">
      <jsp:include page="templates/navbar-top.jsp"/>
        <!--/. NAV TOP  -->
      <jsp:include page="templates/navbar-side-home.jsp"/>
        <!-- /. NAV SIDE  -->

		<div id="page-wrapper">
		  <div class="header">
                        <h1 class="page-header">
                            Dashboard <small>Welcome John Doe</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Dashboard</a></li>
					  <li class="active">Data</li>
					</ol>

		</div>
            <div id="page-inner">

                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3>44,023</h3>
								<small>Daily Visits</small>
							</h3>
						</div>
						<div class="icon">
						   <i class="fa fa-eye fa-5x red"></i>
						</div>

                        </div>
						</div>
                    </div>

					       <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3>32,850</h3>
								<small>Sales</small>
							</h3>
						</div>
						<div class="icon">
						   <i class="fa fa-shopping-cart fa-5x blue"></i>
						</div>

                        </div>
						</div>
                    </div>

					       <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3>56,150</h3>
								<small>Comments</small>
							</h3>
						</div>
						<div class="icon">
						   <i class="fa fa-comments fa-5x green"></i>
						</div>

                        </div>
						</div>
                    </div>

					       <div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
                        <div class="panel panel-primary">
						<div class="number">
							<h3>
								<h3>89,645</h3>
								<small>Daily Profits</small>
							</h3>
						</div>
						<div class="icon">
						   <i class="fa fa-user fa-5x yellow"></i>
						</div>

                        </div>
						</div>
                    </div>

                </div>

		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Profit</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="82" ><span class="percent">82%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Sales</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="55" ><span class="percent">55%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Customers</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="84" ><span class="percent">84%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>No. of Visits</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="46" ><span class="percent">46%</span>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->


				<div class="row">
				<div class="col-md-5">
						<div class="panel panel-default">
						<div class="panel-heading">
							Line Chart
						</div>
						<div class="panel-body">
							<div id="morris-line-chart"></div>
						</div>
					</div>
					</div>

						<div class="col-md-7">
					<div class="panel panel-default">
					<div class="panel-heading">
                                Bar Chart Example
                            </div>
                            <div class="panel-body">
                                <div id="morris-bar-chart"></div>
                            </div>

					</div>
					</div>

				</div>



                <div class="row">
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
							<div class="panel-heading">
							Area Chart
						</div>
						<div class="panel-body">
							<div id="morris-area-chart"></div>
						</div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Donut Chart Example
                            </div>
                            <div class="panel-body">
                                <div id="morris-donut-chart"></div>
                            </div>
                        </div>
                    </div>

                </div>
                


				<footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p>


				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="resources/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="resources/assets/js/bootstrap.min.js"></script>

    <!-- Metis Menu Js -->
    <script src="resources/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="resources/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="resources/assets/js/morris/morris.js"></script>


	<script src="resources/assets/js/easypiechart.js"></script>
	<script src="resources/assets/js/easypiechart-data.js"></script>

	 <script src="resources/assets/js/Lightweight-Chart/jquery.chart.js"></script>

    <!-- Custom Js -->
    <script src="resources/assets/js/custom-scripts.js"></script>


    <!-- Chart Js -->
    <script type="text/javascript" src="resources/assets/js/Chart.min.js"></script>
    <script type="text/javascript" src="resources/assets/js/chartjs.js"></script>

</body>

</html>
