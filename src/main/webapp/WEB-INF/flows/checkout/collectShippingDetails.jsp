<%-- 
    Document   : collectShippingDetails
    Created on : Dec 20, 2019, 9:29:29 PM
    Author     : suliman
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

            <h3>Shipping Address</h3>

            <div class="form-group">
                <label for="shippingStreet">Street Name</label>
                <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">Apartment Number</label>
                <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCity">City</label>
                <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingState">State</label>
                <form:input path="cart.customer.shippingAddress.statee" id="shippingState" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCountry">Country</label>
                <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingZip">Zipcode</label>
                <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
            </div>

            <input type="hidden" name="_flowExecutionKey" />

            <br><br>

            <div class="form-actions">
                <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
                <button type="Submit" class="btn btn-lg btn-info"
                        name="_eventId_shippingDetailCollected" style="margin-right: 44px; margin-left: 0px">Next</button>
                <button class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
            </div>
        </form:form>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
