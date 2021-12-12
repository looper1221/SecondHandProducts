<%-- 
    Document   : registerCustomer
    Created on : Dec 19, 2019, 2:05:08 PM
    Author     : suliman
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register?_csrf=${_csrf.token}" method="post"
                   commandName="customer">

            <h3>Basic Info</h3>
            <form:input type="hidden" path="customerId" id="customerId"/>
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="customerName" id="name" class="form-Control"/>
                <form:errors path="customerName" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="customerEmail" id="email" class="form-Control"/>
                <span style="color: #ff0000"> ${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="customerPhone" id="phone" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span>
                <form:input path="Username" id="username" class="form-Control"/>
                <form:errors
                    path="username" cssStyle="color: #ff0000"/>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <form:password path="password" id="password" class="form-Control"/>
                <form:errors path="password" cssStyle="color: #ff0000"/>
            </div>


            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Number</label>
                <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="billingAddress.statee" id="billingState" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="billingZip">Zip code</label>
                <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
            </div>


            <h3>Shipping Address</h3>

            <div class="form-group">
                <label for="shippingStreet">Street Name</label>
                <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">Apartment Number</label>
                <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCity">City</label>
                <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingState">State</label>
                <form:input path="shippingAddress.statee" id="shippingState" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCountry">Country</label>
                <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingZip">Zip code</label>
                <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
            </div>

            <br><br>
            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
            <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        </form:form>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
