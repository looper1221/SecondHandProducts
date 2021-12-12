<%-- 
    Document   : productInventory
    Created on : Dec 6, 2019, 12:11:59 AM
    Author     : suliman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>My Products</h1>
            <p class="lead ">Manage Products </p>
            <table class="table table-hover table-dark">
                <thead>
                    <tr class="bg-success">
                        <th scope="col">Product Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Condition</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products}" var="product">
                        <tr>
                            <td><img src="<c:url value="/resources/images/${product.productId}.png" />" style="width:300px;height:300px" alt="img" /></td>
                            <td>${product.productName}</td>
                            <td>${product.productCategory}</td>
                            <td>${product.productStatus}</td>
                            <td>${product.productPrice} USD</td>
                            <td><a href="<c:url value="/product/viewProduct/${product.productId}"/>" >
                                    <span class="glyphicon glyphicon-info-sign"></span></a></td>

                            <td><a href="<c:url value="/admin/product/deleteProduct/${product.productId}"/>" >
                                    <span class="glyphicon glyphicon-remove"></span></a></td>

                            <td><a href="<c:url value="/admin/product/editProduct/${product.productId}"/>" >
                                    <span class="glyphicon glyphicon-pencil"></span></a></td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <a href="<c:url value="/admin/product/addProduct"/>" class="btn btn-success">Add Product</a>
            <br/><br/>

            <%@include file="/WEB-INF/view/template/footer.jsp" %>
