<%-- 
    Document   : addProduct
    Created on : Dec 6, 2019, 10:34:06 PM
    Author     : suliman
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <h1>Add Product</h1>
                    <p class="lead ">Add Products Page </p>

                    <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="POST" commandName="product" enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="name" > Name:  </label><form:errors path="productName" style="color:#ff0000" />
                            <form:input id="name" path="productName" class="form-Control"/>
                        </div>

                        <div class="form-group">
                            <label for="category">Category:</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCategory"
                                              id="category" value="clothes"/> Clothes</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCategory"
                                              id="category" value="electronics"/> Electronics</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCategory"
                                              id="category" value="accessories"/> Accessories</label>
                        </div>

                        <div class="form-group">
                            <label for="description">Description</label>
                            <form:textarea id="description" path="productDescription" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label for="price">Price</label><form:errors path="productPrice" style="color:#ff0000" />
                            <form:input id="price" path="productPrice" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label for="condition">Condition:</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCondition"
                                              id="condition" value="Excellent"/> Excellent</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCondition"
                                              id="condition" value="Good"/> Good</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productCondition"
                                              id="condition" value="So-So"/> So-So</label>
                        </div>

                        <div class="form-group">
                            <label for="status">Status</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productStatus"
                                              id="status" value="Active"/> Active</label>
                            <br/>
                            <label class="checkbox-inline"><form:radiobutton path="productStatus"
                                              id="status" value="Inactive"/> Inactive</label>
                            <br/>
                        </div>

                        <div class="form-group">
                            <label for="manufacturer">Manufacturer</label>
                            <form:input id="manufacturer" path="productManufacturer" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <label class="form-control" for="productImage">Image Upload</label>
                            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
                        </div>

                        <br/><br/>
                        <input type="submit" value="Add Product" class="btn btn-default"/>
                        <a href="<c:url value="/admin/productInventory/"/>" class="btn btn-default">Cancel</a>
                    </form:form>


                    <%@include file="/WEB-INF/view/template/footer.jsp" %>
