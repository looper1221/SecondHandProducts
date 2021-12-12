<%-- 
    Document   : login
    Created on : Dec 19, 2019, 9:10:52 AM
    Author     : suliman
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div id="login-box">
            <h2>Enter Username and Password to Login !</h2>
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" login-processing-url = "/j_spring_security_check" method="POST">

                <c:if test="${not empty error}">
                    <div class="error" style="color:#FF0000">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>

                <input type="submit" value="Login" class="btn btn-default" />

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/view/template/footer.jsp" %>
