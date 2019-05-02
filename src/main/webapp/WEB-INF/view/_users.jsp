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
					  <li><a href="/">Home</a></li>
					  <li class="active">Utilisateurs</li>
					  <!-- <li class="active">Data</li> -->
					</ol>

		</div>
        <div id="page-inner">
          <div class="row">
              <div class="col-md-12">
                  <!-- Advanced Tables -->
                  <div class="panel panel-default">
                      <div class="panel-heading">
                           Table Utilisateurs
                      </div>
                      <div class="panel-body">
                          <div class="table-responsive">
                              <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                      <th>Id</th>
                                      <th>Nome</th>
                                      <th>Matricule</th>
                                      <th>Email</th>
                                      <th>Profil</th>
                                      <!-- <th>Action1</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                  <c:forEach var="user" items="${allUsers.content}">
                                    <tr class="odd gradeX">
                                      <td>
                                          <label>${user.getId()}</label>
                                      </td>
                                      <td>
                                          <label id="fname_${user.getId()}">
                                                  ${user.getNom()}
                                          </label>
                                      </td>
                                      <td>
                                          <label id="lname_${user.getId()}">
                                                  ${user.getMatricule()}
                                          </label>
                                      </td>
                                      <td>
                                          <label>
                                                  ${user.getEmail()}
                                          </label>
                                      </td>

                                      <td>
                                          <label>
                                                  ${user.getRoleName()}
                                          </label>

                                      </td>
                                      <td>
                                             <%-- <a href="/edit/${user.getId()}">
                                                 <button type="submit" class="btn btn-primary">Edit User</button></a> --%>
                                        <a href="/edit${user.getId()}"><button class="btn btn-primary"><i class="fa fa-edit "></i> Modifer</button></a>

                                      </td>
                                      <td><a href="/delete/${user.getId()}"><button class="btn btn-danger"><i class="fa fa-pencil"></i> Supprimer</button></a>
                                      </td>
                                    </tr>
                                    </c:forEach>
                                  </tbody>
                              </table>
                          </div>
                        </div>
                      </div>
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
      <!-- Custom Js -->
    <script src="resources/assets/js/custom-scripts.js"></script>


</body>
</html>
