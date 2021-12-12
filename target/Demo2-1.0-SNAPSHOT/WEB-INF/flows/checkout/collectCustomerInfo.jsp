<%-- 
    Document   : collectCustomerInfo
    Created on : Dec 20, 2019, 9:28:46 PM
    Author     : suliman
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
            </div>

            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Number</label>
                <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="cart.customer.billingAddress.statee" id="billingState" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingZip">Zip code</label>
                <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
            </div>

            <input type="hidden" name="_flowExecutionKey" />

            <br><br>
            <div class="form-actions">
                <button type="Submit" class="btn btn-lg btn-info"
                        name="_eventId_customerInfoCollected" style="margin-right: 44px; margin-left: 0px">Next</button>
                <button class="btn btn-lg btn-default" name="_eventId_cancel">Cancel</button>
            </div>        </form:form>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
