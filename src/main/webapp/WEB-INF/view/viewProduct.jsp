<%-- 
    Document   : productDetails
    Created on : Nov 30, 2019, 3:39:20 AM
    Author     : suliman
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<title>DooR || Secondhand Store</title>
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<link href="<c:url value="/resources/css/bootstrap.min.css" /> " rel="stylesheet">


</head>

<body>
    <div class="container-wrapper">
        <div class="container">
            <div class="page-header">
                <h1>Product Details</h1>
                <p class="lead "> See the Product Details</p>

            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/>
                    </div>

                    <div class="col-md-5">
                        <h3>${product.productName}</h3>
                        <p>${product.productDescription}</p>
                        <p><strong>Owner</strong>: ${product.productOwner} </p>
                        <p>
                            <strong>Manufacturer</strong> : ${product.productManufacturer}
                        </p>
                        <p>
                            <strong>Category</strong> : ${product.productCategory}
                        </p>
                        <p>
                            <strong>Condition</strong> : ${product.productCondition}
                        </p>
                        <h4>${product.productPrice} USD</h4>

                        <br>

                        <c:set var="role" scope="page" value="${param.role}" />
                        <c:set var="url" scope="page" value="/product/productList" />
                        <c:if test="${role='admin'}">
                            <c:set var="url" scope="page" value="/admin/productInventory" />
                        </c:if>


                        <a href="<c:url value='/product/productList'/>"  class="btn btn-default">Back</a>
                        <a href="<c:url value='/rest/cart/add/${product.productId}'/>" class="btn btn-warning btn-large"
                           class="glyphicon glyphicon-shopping-cart">AddToCart</a>
                        <a href="<c:url value='/customer/cart/${Cart.cartId}'/>" 
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>

                    </div>
                </div>
            </div>



            <%@include file="/WEB-INF/view/template/footer.jsp" %>