<%-- 
    Document   : productList
    Created on : Nov 30, 2019, 12:59:00 AM
    Author     : suliman
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1, 2, 3, 5, 10, -1], [1, 2, 3, 5, 10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>
            <p class="lead ">Explore All Available Products !</p>

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
                            <td><img src="<c:url value="/resources/images/${product.productId}.png" />" style="width:30px;height:30px " alt="img" /></td>
                            <td>${product.productName}</td>
                            <td>${product.productCategory}</td>
                            <td>${product.productStatus}</td>
                            <td>${product.productPrice} USD</td>
                            <td><a href="<c:url value="/product/viewProduct/${product.productId}"/>" >
                                    <span class="glyphicon glyphicon-info-sign"></span></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <%@include file="/WEB-INF/view/template/footer.jsp" %>
