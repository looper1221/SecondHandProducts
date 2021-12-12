<%-- 
    Document   : admin
    Created on : Dec 5, 2019, 11:58:52 PM
    Author     : suliman
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Door Secondhand Store">
        <meta name="author" content="Suliman">

        <title>DooR || Secondhand Store</title>

        <link href="<c:url value="/resources/css/bootstrap.min.css" /> " rel="stylesheet">


    </head>

    <body>

        <div class="container-wrapper">
            <div class="container">
                <div class="page-header">
                    <h1>Admin || Page</h1>
                    <p class="lead ">Admin Page</p>

                    <c:if test="${pageContext.request.userPrincipal.name != null}" >
                        <h2>
                            Welcome: ${pageContext.request.userPrincipal.name} | 
                            <a href="${pageContext.request.contextPath}/login?logout" login-processing-url="/j_spring_security_logout">Logout</a>
                        </h2>
                    </c:if>
                    <h3>
                        <a href="<c:url value="/admin/productInventory"/>"> Product Inventory</a>
                    </h3>
                    <p>Here you can view, check and modify the product inventory!</p>

                    <br><br>

                    <h3>
                        <a href="<c:url value="/admin/customer" />" >Customer Management</a>
                    </h3>

                    <p>Here you can view the customer information!</p>


                    <%@include file="/WEB-INF/view/template/footer.jsp" %>


