<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">

            <title><fmt:message key="page.title" /></title>
            <script src="bookResult.js"></script>
            <link rel="stylesheet" type="text/css" href="${css}"> 
            <style>
                <%@include file="/resources/css/spisok.css" %>
            </style>
        </head>
        <body>
            <c:choose>
                <c:when test="${not empty result}"> <!-- Если результат не пустой -->
                    <table align="center">
                        <thead>
                        <th><fmt:message key="table.header.title" /></th>
                        <th><fmt:message key="table.header.authors" /></th>
                        <th><fmt:message key="table.header.publisher" /></th>
                        <th><fmt:message key="table.header.year" /></th>
                        <th><fmt:message key="table.header.pages" /></th>
                        <th><fmt:message key="table.header.price" /></th>
                        <th><fmt:message key="table.header.binding" /></th>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${result}">
                            <tr>
                                <td>${book.title}</td>
                                <td>${book.authors}</td>
                                <td>${book.publisher}</td>
                                <td>${book.year}</td>
                                <td>${book.pages}</td>
                                <td>${book.price}</td>
                                <td>${book.binding}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
        </c:choose>
        <div class="center">
            <form action="page" method="post">
                <input type="hidden" name="page" value="toUser">
                <input type="submit" value="<fmt:message key="button.back" />">
            </form>  
        </div>
    </body></fmt:bundle>
</html>
