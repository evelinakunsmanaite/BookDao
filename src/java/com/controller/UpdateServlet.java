/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.User;
import java.io.IOException;
import java.util.HashSet;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends InitServlet implements Jumpable {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Set<User> users = userService.read();// Получение списка абитуриентов из сервиса
        Set<User> user = new HashSet<>();
        for (User a : users) {
            if (a.getId() == Integer.parseInt(id)) {
                user.add(a);
            }
        }

        request.setAttribute("user", user);
        jump("/WEB-INF/jsp/update.jsp", request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

       String login = request.getParameter("login");
       String name = request.getParameter("name");
       String password = request.getParameter("password");

        boolean isUserUpdate = userService.update(id, login, name, password);

         if (isUserUpdate)  jump("/WEB-INF/jsp/true.jsp", request, response);
         else jump("/WEB-INF/jsp/false.jsp", request, response);   

    }

}
