<%-- 
    Document   : thankCustomer
    Created on : Dec 20, 2019, 9:30:03 PM
    Author     : suliman
--%>

<%@include file="/WEB-INF/view/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be shipped in three business days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<c:url value="/" />" class="btn btn-default">OK</a>
            </p>
        </section>

    </div>
</div>

<%@include file="/WEB-INF/view/template/footer.jsp" %>