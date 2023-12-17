<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
            <script src="error.jsp"></script>
            <title><fmt:message key="page.title" /></title>
            <meta charset="UTF-8">
            <link rel="stylesheet" type="text/css" href="${css}">
            <style>
                <%@include file="/resources/css/error.css" %>
            </style>
        </head>
        <body>
            <section class="error">
                <div class="error__content">
                    <div class="error__message message">
                        <p class="message__text">
            <fmt:message key="error">
                <fmt:param value="${pageContext.exception.message}"/>
            </fmt:message>
        </p>
         <p class="message__text">
            <fmt:message key="error.code">
                <fmt:param value="${pageContext.errorData.statusCode}"/>
            </fmt:message>
        </p>
 <p class="message__text">
     <fmt:message key="error.name">
                <fmt:param value="${pageContext.exception.getClass().getName()}"/>
                <fmt:param value="${pageContext.errorData.requestURI}"/>
            </fmt:message>
        </p>
                    </div>
        <form action="index.html">
            <input type="submit" class="submit" value='<fmt:message key="toHomepage"/>'/>
        </form>
    </div>
</body>
</fmt:bundle>
</html>
