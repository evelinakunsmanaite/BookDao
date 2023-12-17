package com.service;

import java.util.Set;
import com.model.User;

public interface UserService {

    boolean create(User user);

    Set<User> read();

    boolean update(int id, String login, String name, String password);

    boolean delete(int id);

    User login(String login, String password);

}
