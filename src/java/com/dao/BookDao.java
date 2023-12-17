/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.Book;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface BookDao {
    Set<Book> read();
}
