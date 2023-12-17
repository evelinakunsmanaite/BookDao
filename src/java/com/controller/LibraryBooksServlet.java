package com.controller;

import com.model.Book;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LibraryBooksServlet", urlPatterns = {"/libraryBooksServlet"})
public class LibraryBooksServlet extends InitServlet implements Jumpable {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Set<Book> result = bookService.read();
        if (!result.isEmpty()) {
            //Получение результата по парметрам запроса
            request.setAttribute("result", result);

            jump("/WEB-INF/jsp/bookResult.jsp", request, response);
        } else {
     
            jump("/WEB-INF/jsp/error.jsp", request, response);
        }

    }
}
