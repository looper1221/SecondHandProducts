<%-- 
    Document   : customerManagement
    Created on : Dec 21, 2019, 1:40:19 AM
    Author     : suliman
--%>

<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management Page</h1>

            <p class="lead">This is the customer management page.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
                <tr class="bg-success">
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Enabled</th>

                </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.password}</td>
                    <td>${customer.enabled}</td>
                    <td><a href="<c:url value="/admin/customer/editCustomer/${customer.customerId}"/>" >
                            <span class="glyphicon glyphicon-pencil"></span></a></td>

                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/view/template/footer.jsp" %>
