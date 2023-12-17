/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.User;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/AddServlet"})
public class AddServlet extends InitServlet implements Jumpable {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        jump("/WEB-INF/jsp/adminAdd.jsp", request, response);
    }//сработывает при нажатии на ссылку добавить 

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        // Создаем объект абитуриента
        User user = new User(login, name, password);

        boolean isUserAdd = userService.create(user);
        if (isUserAdd)  jump("/WEB-INF/jsp/true.jsp", request, response);
         else jump("/WEB-INF/jsp/false.jsp", request, response);   

    }
}
