package com.service.impl;

import com.dao.UserDao;
import java.util.Set;
import com.model.User;
import com.service.UserService;
import java.util.stream.Collectors;

public class UserServiceImpl implements UserService {

    UserDao dao;

    public UserServiceImpl(UserDao dao) {
        this.dao = dao;
    }

    @Override
    public boolean create(User user) {
        return dao.create(user) > 0;
    }

    @Override
    public Set<User> read() {
        return dao.read();
    }

    @Override
    public boolean update(int id, String login, String name, String password) {
        User updatedUser = new User(id, login, name, password);
        return dao.update(updatedUser) > 0;
    }

    @Override
    public boolean delete(int id) {
        User user = new User(id);
        return dao.delete(user) > 0;
    }

    public User login(String login, String password) {
        return dao.read().stream()
                .filter(user -> login.equals(user.getLogin())
                && password.equals(user.getPassword()))
                .findFirst()
                .orElse(null);
    }

}
