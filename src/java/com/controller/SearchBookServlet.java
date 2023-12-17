package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Book;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "SearchBookServlet", urlPatterns = {"/searchBookServlet"})
public class SearchBookServlet extends InitServlet implements Jumpable {
    
    private List<Book> books;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

          // Получение параметра запроса
            String author = request.getParameter("author");

            // Поиск книг по автору
            List<Book> result =  bookService.filterBooksByAuthor(author);

        if (result.isEmpty()) {
                // Если результат пуст, перенаправляем на страницу ошибки
                           jump("/WEB-INF/jsp/error.jsp", request, response);

            } else {
                // Если результат не пуст, передаем его в JSP страницу для отображения
                                request.setAttribute("result", result);
                            jump("/WEB-INF/jsp/bookResult.jsp", request, response);

            }
        }
    }