/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.impl;

import com.dao.BookDao;
import com.model.Book;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import javax.sql.DataSource;

/**
 *
 * @author Administrator
 */
public class BookDaoImpl implements BookDao{
        private final DataSource dataSource;

    public BookDaoImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

   @Override
    public Set<Book> read() {

String req = "Select * from books";
        Set<Book> books;
        try (Connection conn = dataSource.getConnection()) {
            try (Statement statement = conn.createStatement(); ResultSet resultSet = statement.executeQuery(req)) {
                books = new HashSet<>();
                while (resultSet.next()) {//пока есть записи 
                    int id = resultSet.getInt("id");
                    String title = resultSet.getString("title");
                    String authors = resultSet.getString("authors");
                    String publisher = resultSet.getString("publisher");
                    int year = resultSet.getInt("year");     
                    int pages = resultSet.getInt("pages");
double price = resultSet.getDouble("price");
                    String binding = resultSet.getString("binding"); 
                    books.add(new Book(id, title, authors,publisher,year,pages,price,binding));
                }
            }
            return books;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }   
    }

}
