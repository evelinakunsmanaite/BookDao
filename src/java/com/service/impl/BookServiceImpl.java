/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service.impl;

import com.dao.BookDao;
import com.model.Book;
import com.service.BookService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 *
 * @author Administrator
 */
public class BookServiceImpl implements BookService {

    BookDao dao;

    public BookServiceImpl(BookDao dao) {
        this.dao = dao;
    }

    @Override
    public Set<Book> read() {
        return dao.read();
    }

    @Override
    public List<Book> filterBooksByAuthor(String author) {

       return dao.read().stream()
                .filter(book -> Arrays.asList(book.getAuthors().split(",\\s*")).contains(author))
                   .collect(Collectors.toList());

    }
    
    @Override
    public List<Book> filterBooksByPublisher(String publisher) {

       return  dao.read().stream()
                .filter(book -> Arrays.asList(book.getPublisher().split(",\\s*")).contains(publisher))
                   .collect(Collectors.toList());

    }
    
        @Override
    public List<Book> getBooksByYear(int year) {

        return dao.read().stream()
                .filter(book -> book.getYear() >= year)  
                .collect(Collectors.toList());
    }
    }

