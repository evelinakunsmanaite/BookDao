<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
            <style>
                <%@include file="/resources/css/adminAdd.css"%>
            </style>
        </head>
        <body>

            <!-- Форма добавления -->
            <h2><fmt:message key="title.addUser" /></h2>
            <form action="AddServlet" method="post">
                <label for="login"><fmt:message key="label.login" /></label>
                <input type="text" id="login" name="login" required><br>

                <label for="name"><fmt:message key="label.name" /></label>
                <input type="text" id="name" name="name" required><br>

                <label for="password"><fmt:message key="label.password" /></label>
                <input type="password" id="password" name="password" required><br>

                <input type="submit" value="<fmt:message key="button.addUser"/>">
            </form>

            <form action="page" method="post">
                <input type="hidden" name="page" value="toAdmin">
                <input type="submit" value="<fmt:message key="button.toHomepage"/>">
            </form>  
        </body>
    </fmt:bundle>

</html>
