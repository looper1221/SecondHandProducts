<%-- 
    Document   : cart
    Created on : Dec 11, 2019, 10:14:36 AM
    Author     : suliman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>

                    <p>All the selected products in your shopping cart !</p>

                </div>
            </div>
        </section>

        <section class="container"> 
            <div >
                <div>
                    <a href="<c:url value="/rest/cart/clearCart/${cartId}"/>" class="btn btn-danger pull-left ">
                        <span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    <a href="<c:url value='/order/${cartId}'/>"
                       class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                    </a>
                </div>

                <br/><br/><br/>
                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>State</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${items}" var="item">
                        <tr>
                            <td>${item.itemName}</td>
                            <td>${item.unitPrice}</td>
                            <td>${product.satee}</td>

                            <td><a href="<c:url value='/rest/cart/remove/${item.cartItemId}'/> " class="label label-danger"><span class="glyphicon glyphicon-remove"></span> Remove</a></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>${cart.grandTotal}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<c:url value="/product/productList" />"  class="btn btn-default">Continue Shopping</a>
            </div>
        </section>
    </div>
</div>


<script src="<c:url value='/resources/js/angular.min.js' />" ></script>

<script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@include file="/WEB-INF/view/template/footer.jsp" %>