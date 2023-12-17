<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="err" tagdir="/WEB-INF/tags" %> 

<!DOCTYPE html>
<html>
    <head>
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
            <title><fmt:message key="page.title" /></title> 
            <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> <!-- Подключение шрифта Poppins из Google Fonts -->
            <script src="https://kit.fontawesome.com/a81368914c.js"></script> <!-- Подключение набора иконок FontAwesome -->
            <meta charset="UTF-8"> <!-- Кодировка страницы -->
            <link rel="stylesheet" href="${css}" type="text/css"/> <!-- Подключаем CSS файл -->
            <style>
                <%@include file="/resources/css/index.css" %><!-- Генерируем URL для CSS файла -->
            </style>
        </head>

        <body>
            <img class="wave" src="resources/img/avtor.jpg"> 
            <div class="container">
                <div class="login-content">
                    <form action="LoginServlet" method="post"> 
                        <h2 class="title"><fmt:message key="welcome.title" /></h2> 
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i> 
                            </div>
                            <div class="div">
                                <h5><fmt:message key="login.label" /></h5>
                                <input type="text" class="input" name="login" >
                            </div>
                        </div>
                        <div class="input-div pass">
                            <div class="i"> 
                                <i class="fas fa-lock"></i> 
                            </div>
                            <div class="div">
                                <h5><fmt:message key="password.label" /></h5>
                                <input type="password" class="input" name="pass" >
                            </div>
                        </div>

                        <input class="btn" type="submit" id="inp" value="<fmt:message key='button.login' />"> 
                    </form>
                    <err:error />
                    <table>
                        <tr>
                            <td>
                                <form action="LocalServlet"> 
                                    <div class="form-group form-button">
                                        <input type="hidden" name="locale" value="en"/>
                                        <input class="form-submit" type="submit" value='<fmt:message key="en" />'/>
                                    </div>
                                </form> 
                            </td>
                            <td>

                                <form action="LocalServlet"> 
                                    <div class="form-group form-button">
                                        <input type="hidden" name="locale" value="ru"/>
                                        <input class="form-submit"  type="submit" name="locale" value='<fmt:message key="ru" />'/>
                                    </div>
                                </form>
                            </td>
                        </tr>
                    </table> 
                </div>
            </div>
            <script type="text/javascript" src="resources/js/main.js"></script> 
        </body></fmt:bundle>
</html>
