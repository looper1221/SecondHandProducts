<%-- 
    Document   : header
    Created on : Nov 30, 2019, 3:16:12 AM
    Author     : suliman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <meta name="description" content="Door Secondhand Store">
        <meta name="author" content="Suliman">

        <title>DooR || Secondhand Store</title>

        <script type="text/javascript" src="<c:url value='/resources/js/jquery-2.1.4.min.js'/>" </script>

        <%--Data Table--%>
        <script type="text/javascript" src="<c:url value='/resources/js/jquery.dataTables.min.js'/>"></script>

        <script src="<c:url value='/resources/js/angular.min.js' />" ></script>

        <link href="<c:url value='/resources/css/bootstrap.min.css' /> " rel="stylesheet">
        <link href="<c:url value= '/resources/css/secondhandCarousel.css' />" rel="stylesheet">
        <link href="<c:url value='/resources/css/jquery.dataTables.min.css'/>" rel="stylesheet">


    </head>


    <body>
        <div class="navbar-wrapper">
            <div class="container">

                <nav class="navbar navbar-inverse navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<c:url value='/'/>">DooR || Secondhand Store</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="<c:url value='/'/>">Home</a></li>
                                <li><a href="<c:url value="/product/productList" />">Products</a></li>
                                <li><a href="<c:url value='/product/user/addProduct'/>">Sell Product</a></li>
                                <li><a href="<c:url value='/product/user/myProducts'/>">My Products</a></li>

                                <li><a href="#contact">Contact</a></li>

                            </ul>
                            <ul class="nav navbar-nav pull-right">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                                    <li><a href="<c:url value="/login?logout"/>"  logout-processing-url="/j_spring_security_logout">Logout</a></li>
                                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                        <li><a href="<c:url value="/customer/cart/${cartId}" />">Cart</a></li>
                                        </c:if>
                                        <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                        <li><a href="<c:url value="/admin" />">Admin</a></li>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${pageContext.request.userPrincipal.name  == null}">
                                    <li><a href="<c:url value="/customer" />">Login</a></li>
                                    <li><a href="<c:url value="/register" />">Register</a></li>
                                    </c:if>
                        </div>
                    </div>
                </nav>

            </div>
        </div>
        <br/><br/><br/>
    </head>
</html>
