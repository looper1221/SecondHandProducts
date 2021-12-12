<%--
    Document   : editCustomer
    Created on : Dec 23, 2019, 6:31:36 AM
    Author     : suliman
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">

        <div class="page-header">
            <h1>Edit Customer Details</h1>

        </div>

        <form:form class="form-horizontal" action="${pageContext.request.contextPath}/admin/customer/editCustomer?_csrf=${_csrf.token}" method="post"
                   commandName="customer">

            <h3>Basic Info</h3>
            <form:input type="hidden" path="customerId" id="customerId" value="${customer.customerId}"/>
            <div class="form-group">
                <label for="name" class="col-sm-3 control-label">Name*</label>
                <form:input path="customerName" id="name" class="form-Control" value="${customer.customerName}"/>
                <form:errors path="customerName" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <form:input path="customerEmail" id="email" class="form-Control" value="${customer.customerEmail}" />
                <span style="color: #ff0000"> ${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="phone" class="col-sm-3 control-label">Phone*</label>
                <form:input path="customerPhone" id="phone" class="form-Control" value="${customer.customerPhone}"/>
            </div>

            <div class="form-group">
                <label for="username" class="col-sm-3 control-label">Username*</label><span style="color: #ff0000">${usernameMsg}</span>
                <form:input path="username" id="username" class="form-Control" value="${customer.username}"/>
                <form:errors
                    path="username" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password*</label>
                <form:password path="password" id="password" class="form-Control" value="${customer.password}"/>
                <form:errors path="password" cssStyle="color: #ff0000"/>
            </div>
            <div class="form-group">
                <label for="status" class="col-sm-3 control-label">Status*</label>
                <form:input path="enabled" id="enabled" class="form-Control" value="${customer.enabled}"/>
                <form:errors path="enabled" cssStyle="color: #ff0000"/>
            </div>

            <!--
                    <h3>Billing Address</h3>
            
                    <div class="form-group">
                        <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" value="${billingAddress.streetName}"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" value="${billingAddress.apartmentNumber}"/>
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control" value="${billingAddress.city}" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="billingAddress.statee" id="billingState" class="form-Control" value="${billingAddress.statee}"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control" value="${billingAddress.country}"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zip code</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" value="${billingAddress.zipCode}"/>
        </div>


        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control" value="${shippingAddress.streetName}"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" value="${shippingAddress.apartmentNumber}"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control" value="${shippingAddress.city}"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="shippingAddress.statee" id="shippingState" class="form-Control" value="${shippingAddress.statee}"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" value="${shippingAddress.country}"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zip code</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" value="${shippingAddress.zipCode}"/>
        </div>
            -->
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <span class="help-block">*Required fields</span>
                </div>
            </div>
            <br><br>
            <button type="submit" class="">Edit Customer</button>
            <button><a href="<c:url value="/" />" class="">Cancel</a> </button>
            <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        </form:form>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
