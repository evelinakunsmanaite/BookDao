<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>    
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">

            <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
            <script src="cabinet.js"></script>
            <title><fmt:message key="all.books" /></title>
            <meta charset="UTF-8">
            <link rel="stylesheet" type="text/css" href="${css}">  
            <style>
                <%@include file="/resources/css/cabinet.css" %>
            </style>
        </head>
        <body>
            <h1 align="center"><fmt:message key="welcome.message"/><%= session.getAttribute("name")%></h1>
            <div class="container">

                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/cab4.png" alt="Avatar" class="avatar-image">
                        <form action="searchBookServlet" method="post">
                            <h2 align="center"><fmt:message key="search.by.author" /></h2>
                            <label><input type="text" name="author" required=""></label>
                            <button class="b" type="submit"><fmt:message key="button.find" /></button>
                        </form>
                    </div>
                </div>

                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/cab2.png" alt="Avatar" class="avatar-image">
                        <form action="libraryBooksServlet" method="post">
                            <h2 align="center"><fmt:message key="all.books" /></h2>
                            <button class="b" type="submit"><fmt:message key="button.show" /></button>
                        </form>
                    </div>
                </div>

                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/cab3.png" alt="Avatar" class="avatar-image">
                        <form action="yearServlet" method="post">
                            <h2 align="center"><fmt:message key="search.by.year" /></h2>
                            <label><input type="number" name="year" required=""></label>
                            <button class="b" type="submit"><fmt:message key="button.show" /></button>
                        </form>
                    </div>
                </div>

                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/cab1.png" alt="Avatar" class="avatar-image">
                        <form action="searchBooksServlet" method="post">
                            <h2 align="center"><fmt:message key="search.by.publisher" /></h2>
                            <label><input type="text" name="publisher" required=""></label>
                            <button class="b" type="submit"><fmt:message key="button.find" /></button>
                        </form>
                    </div>
                </div>

            </div>
            <div class="center">
                <form action="page" method="post">
                    <input type="hidden" name="page" value="toLogin">
                    <input type="submit" value="<fmt:message key="button.back" />">
                </form>   
            </div>
        </body> </fmt:bundle>
</html>
