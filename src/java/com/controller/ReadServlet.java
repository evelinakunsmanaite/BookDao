/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.User;
import java.io.IOException;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "ReadServlet", urlPatterns = {"/ReadServlet"})
public class ReadServlet extends InitServlet implements Jumpable {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Set<User> user = userService.read();// Получение списка абитуриентов из сервиса

        if (!user.isEmpty()) {
            request.setAttribute("user", user);
            jump("/WEB-INF/jsp/adminRead.jsp", request, response);
        } else {
            jump("/WEB-INF/jsp/error.jsp", request, response);

        }

    }

}
