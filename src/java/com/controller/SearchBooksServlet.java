package com.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Book;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "SearchBooksServlet", urlPatterns = {"/searchBooksServlet"})
public class SearchBooksServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String publisher = request.getParameter("publisher");
        publisher = publisher != null ? publisher.trim() : "";

        // Поиск книг по издательству
        List<Book> result = bookService.filterBooksByPublisher(publisher);

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
