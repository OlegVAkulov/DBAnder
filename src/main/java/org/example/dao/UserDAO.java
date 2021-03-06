package org.example.dao;

import org.example.entity.User;

import java.util.List;

public interface UserDAO {

    List<User> getAllUsers();
    void saveUser(User user);
    User getUserById(int id);
    void updateUser(User user);
    void deleteUser(int id);
}
