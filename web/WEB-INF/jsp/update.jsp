<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
            <style>
                <%@include file="/resources/css/adminAdd.css"%>
            </style>
        </head>
        <body>
            <h2><fmt:message key="update" /></h2>

            <form action="UpdateServlet" method="post">
                <c:forEach var="user" items="${user}">

                    <label for="login"><fmt:message key="label.login" /></label>
                    <input type="text" id="login" name="login" value="${user.login}" required><br>

                    <label for="name"><fmt:message key="label.name" /></label>
                    <input type="text" id="name" name="name" value="${user.name}" required><br>

                    <label for="password"><fmt:message key="label.password" /></label>
                    <input type="text" id="password" name="password" value="${user.password}" required><br>

                    <input type="hidden" name="id" value="${user.id}">

                    <input type="submit" value="<fmt:message key="update.button" />">
                </c:forEach>
            </form>

            <form action="page" method="post">
                <input type="hidden" name="page" value="toAdmin">
                <input type="submit" value="<fmt:message key="toHomepage.button" />">
            </form>  
        </body>
    </fmt:bundle>
</html>
