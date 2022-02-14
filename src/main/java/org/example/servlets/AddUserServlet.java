package org.example.servlets;

import org.example.dao.UserDAO;
import org.example.dao.UserDAOImpl;
import org.example.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddUserServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAOImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("name"),
                request.getParameter("surname"),
                Integer.parseInt(request.getParameter("age")));
        userDAO.saveUser(user);
        response.sendRedirect("users");
    }
}
