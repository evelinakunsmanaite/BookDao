<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                        <h1 class="message__title"><fmt:message key="error.message.title" /></h1>
                        <p class="message__text"><fmt:message key="error.message.text" /></p>
                    </div>
                    <div class="center">
                        <form action="page" method="post">
                            <input type="hidden" name="page" value="toLogin">
                            <input type="submit" value="<fmt:message key="button.back" />">
                        </form>   
                    </div>
                </div>   
            </section>
        </body></fmt:bundle>
</html>
