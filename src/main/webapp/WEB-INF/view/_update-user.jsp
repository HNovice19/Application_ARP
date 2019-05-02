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
    <title>Bootstrap HTML5 Admin Template : Master - WebThemez</title>
	<!-- Bootstrap Styles-->
    <link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="resources/assets/css/font-awesome.css" rel="stylesheet" />

    <link href="resources/assets/css/select2.min.css" rel="stylesheet" >
    <link href="resources/assets/css/checkbox3.min.css" rel="stylesheet" >
        <!-- Custom Styles-->
    <link href="resources/assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <!-- TABLE STYLES-->
  <link href="resources/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
    <div id="wrapper">
      <jsp:include page="templates/navbar-top.jsp"/>
        <!--/. NAV TOP  -->
      <jsp:include page="templates/navbar-side-users.jsp"/>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
		  <div class="header">
                        <h1 class="page-header">
                            Utilisateurs <small>Tous les utilisateurs</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li class="active">Modifer l'utilisateur</li>
					</ol>

		</div>
        <div id="page-inner">

              <div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Modifier l'utilisateur</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <c:if test="${not empty param.error}">
                                        <label id="error" class="alert alert-danger">${param.error}</label>
                                    </c:if>
                                    <form action="/update" method="POST" class="form-horizontal">

                                        <div class="form-group">
                                         <input id="id" type="hidden" class="form-control" name="id" value="${user.id}">
                                        </div>

                                        <div class="form-group">
                                            <label for="nom" class="col-sm-2 control-label">Nom</label>
                                            <div class="col-sm-10">
                                                <input id="nom" type="text" class="form-control" name="nom" value="${user.getNom()}" required autofocus>
                                            </div>

                                        </div>

                                         <div class="form-group">
                                            <label for="matricule" class="col-sm-2 control-label" >Matricule</label>
                                            <div class="col-sm-10">
                                                <input id="matricule" type="text" class="form-control" name="matricule" value="${user.getMatricule()}" required>
                                            </div>
                                        </div>

                                         <div class="form-group">
                                            <label for="email" class="col-sm-2 control-label">E-Mail Address</label>
                                            <div class="col-sm-10">
                                                <input id="email" type="email" class="form-control" name="email" value="${user.getEmail()}" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="password" class="col-sm-2 control-label">Password</label>
                                            <div class="col-sm-10">
                                                <input id="password" type="password" class="form-control" name="password" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Select</label>
                                            <div class="col-sm-10">
                                              <select class="selectbox">
                                                <optgroup label="BPR">
                                                    <option value="ADMIN">Utilisateur BCP</option>
                                                </optgroup>
                                                <optgroup label="SUCCURSALE">
                                                    <option value="ADMIN">Utilisateur SUCC</option>
                                                </optgroup>
                                                <optgroup label="AGENCE">
                                                    <option value="USER">Utilisateur AGENCE</option>
                                                </optgroup>
                                              </select>
                                            </div>
                                        </div>

                                        <!-- <div class="form-group">
                                        <div class="sub-title">Select</div>
                                            <select class="selectbox">
                                                <optgroup label="BPR">
                                                    <option value="ADMIN">Utilisateur BCP</option>
                                                </optgroup>
                                                <optgroup label="SUCCURSALE">
                                                    <option value="ADMIN">Utilisateur SUCC</option>
                                                </optgroup>
                                                <optgroup label="AGENCE">
                                                    <option value="ADMIN">Utilisateur AGENCE</option>
                                                </optgroup>
                                            </select>
                                        </div> -->

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">update</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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
      <!-- Custom Js -->
    <script src="resources/assets/js/custom-scripts.js"></script>


</body>
</html>
