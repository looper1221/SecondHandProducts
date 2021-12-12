<%-- 
    Document   : home
    Created on : Nov 24, 2019, 9:50:33 PM
    Author     : suliman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="https://cdn.shopify.com/s/files/1/1692/9471/articles/sh_1400x.progressive.jpg?v=1503209360" alt="First slide">
            <div class="container">

            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="https://i.pinimg.com/originals/14/0d/e2/140de2791cee8a697a329d348ea05828.jpg" alt="Second slide">
            <div class="container">

            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="https://cdn.onebauer.media/one/media/5c2f/7332/50ae/f508/7f1a/c832/GettyImages-1002114190.jpg?quality=80&width=1800&ratio=16-9&resizeStyle=aspectfill&format=jpg" alt="Third slide">
            <div class="container">

            </div>
        </div>
    </div>
    <a class="left carousel-control" href="https://i.pinimg.com/originals/14/0d/e2/140de2791cee8a697a329d348ea05828.jpg" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

</div>

<hr class="featurette-divider">

<!-- /END THE FEATURETTES -->


<%@include file="/WEB-INF/view/template/footer.jsp" %>
