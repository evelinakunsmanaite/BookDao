package com.controller;

import com.model.Book;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "YearServlet", urlPatterns = {"/yearServlet"})
public class YearServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Получение списка книг
        int year = Integer.parseInt(request.getParameter("year"));

        // Фильтрация книг по году
               List<Book> result = bookService.getBooksByYear(year);

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
