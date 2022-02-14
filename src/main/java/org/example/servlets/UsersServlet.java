package org.example.servlets;


import org.example.dao.UserDAO;
import org.example.dao.UserDAOImpl;
import org.example.entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UsersServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAOImpl();



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<User> usersList = userDAO.getAllUsers();
        try {
            request.setAttribute("usersList", usersList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/allUsers.jsp");
            dispatcher.forward(request, response) ;
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }
}
