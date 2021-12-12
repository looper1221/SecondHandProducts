<%-- 
    Document   : orderConfirmation
    Created on : Dec 20, 2019, 9:31:05 PM
    Author     : suliman
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizaontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                    ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                    ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                    ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.statee}
                                    <br>
                                    ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                    ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                    ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                    ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.statee}
                                    <br>
                                    ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>#</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                        <tr>
                                            <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                            <td class="col-md-1" style="text-align: center">${cartItem.unitPrice}</td>
                                        </tr>
                                    </c:forEach>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td class="text-right">
                                            <h4><strong>Grand Total: </strong></h4>
                                        </td>
                                        <td class="text-center text-danger">
                                            <h4><strong>$ ${order.cart.grandTotal}</strong></h4>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey" />

                        <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-default"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                        

                        
                        <div class="form-actions">
                <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
                <button type="Submit" class="btn btn-lg btn-info"
                        name="_eventId_customerInfoCollected" style="margin-right: 44px; margin-left: 0px">Next</button>
                <button class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
            </div>
                    </div>
                </form:form>

            </div>
        </div>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
