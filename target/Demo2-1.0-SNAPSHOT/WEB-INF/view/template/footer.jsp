<%-- 
    Document   : footer
    Created on : Nov 30, 2019, 3:23:49 AM
    Author     : suliman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2019 Door Secondhand Products inc. &middot; <a href="${pageContext.request.contextPath}/privacy">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>
</div>
</div>

<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
</body>
</html>