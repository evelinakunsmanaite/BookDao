/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

import com.model.Book;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface BookService {

    Set<Book> read();
    List<Book> filterBooksByAuthor(String author);
    List<Book> filterBooksByPublisher(String publisher);
    List<Book> getBooksByYear(int year);
   
}
