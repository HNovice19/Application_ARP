<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Update User</title>
</head>

<body class="my-login-page">
<jsp:include page="templates/header.jsp"/>
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">update User</h4>
                        <c:if test="${not empty param.error}">
                            <label id="error" class="alert alert-danger">${param.error}</label>
                        </c:if>
                        <form action="/update" method="POST">

                        	<div class="form-group">
                                <input id="id" type="hidden" class="form-control" name="id" value="${user.id}">
                            </div>

                            <div class="form-group">
                                <label for="nom">Nom</label>
                                <input id="firstName" type="text" class="form-control" name="nom" value="${user.getNom()}" required
                                       autofocus>
                            </div>

                            <div class="form-group">
                                <label for="matricule">last Name</label>
                                <input id="lastName" type="text" class="form-control" name="matricule" value="${user.getMatricule()}" required>
                            </div>

                            <div class="form-group">
                                <label for="email">E-Mail Address</label>
                                <input id="email" type="email" class="form-control" name="email" value="${user.getEmail()}" required>
                            </div>

                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" type="password" class="form-control" name="password" required
                                       data-eye>
                            </div>
                            <div class="form-group">
                                <select id="criteriaId" name="roleName" class="custom-select form-control" required>
                                    <option value="ADMIN">Admin</option>
                                    <option value="USER">User</option>
                                    <option value="USER">User_BPR</option>
                                    <option value="ADMIN">User_SUCC</option>
                                    <option value="USER">User_AGENCE</option>
                                </select>
                            </div>

                            <div class="form-group no-margin">
                                <button type="submit" class="btn btn-primary btn-block">
                                    update User
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <jsp:include page="templates/copyright.jsp"/>
            </div>
        </div>
    </div>
</section>
<jsp:include page="templates/footer.jsp"/>
</body>
</html>
