package com.controller;

import com.dao.AdminDao;
import com.dao.BookDao;
import com.dao.UserDao;
import com.dao.impl.AdminDaoImpl;
import com.dao.impl.BookDaoImpl;
import com.dao.impl.UserDaoImpl;
import com.service.AdminService;
import com.service.BookService;
import com.service.UserService;
import com.service.impl.AdminServiceImpl;
import com.service.impl.BookServiceImpl;
import com.service.impl.UserServiceImpl;
import javax.sql.DataSource;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;

public abstract class InitServlet extends HttpServlet {

    private @Resource(name = "jdbc/book")//испальзование листнера
    DataSource dataSource;
    protected UserDao userDao;
    protected BookDao bookDao;
    protected UserService userService;
    protected BookService bookService;
    protected AdminDao adminDao;
    protected AdminService adminService;

    @Override
    public void init() {//инициализация объектов с которыми работает сервлеты
        userDao = new UserDaoImpl(dataSource);
        userService = new UserServiceImpl(userDao);
        bookDao = new BookDaoImpl(dataSource);
        bookService = new BookServiceImpl(bookDao);
        adminDao = new AdminDaoImpl(dataSource);
        adminService = new AdminServiceImpl(adminDao);
    }
}
