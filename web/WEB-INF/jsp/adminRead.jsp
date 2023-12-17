<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                <%@include file="/resources/css/spisok.css"%>
            </style>
        </head>
        <body>
            <!-- Таблица с абитуриентами -->
            <table>
                <thead>
                <th>id</th>
                <th><fmt:message key="label.name" /></th>
                <th><fmt:message key="label.login" /></th>
                <th><fmt:message key="label.password" /></th> 
                <th><fmt:message key="delete" /></th>
                <th><fmt:message key="edit" /></th>

            </thead>
            <c:forEach var="user" items="${user}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.login}</td>
                    <td>${user.password}</td>

                    <td>
                        <form action="DeleteServlet" method="post">
                            <input type="hidden" name="id" value="${user.id}"/>
                            <input type="submit" value="<fmt:message key="delete" />"/>
                        </form>
                    </td>
                    <td>
                        <form action="UpdateServlet">
                            <input type="hidden" name="id" value="${user.id}"/>
                            <input type="submit" value="<fmt:message key="edit" />"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <form action="page" method="post">
            <input type="hidden" name="page" value="toAdmin">
            <input type="submit" value="<fmt:message key="toHomepage" />">
        </form>
    </body>
</fmt:bundle>
</html>
