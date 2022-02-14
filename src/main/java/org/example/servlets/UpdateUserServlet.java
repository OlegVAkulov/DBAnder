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

public class UpdateUserServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userId"));
        User user = getUserForUpdate(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateUserInfo.jsp");
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        int age = Integer.parseInt(request.getParameter("age"));
        User user = new User(id, name, surname, age);
        userDAO.updateUser(user);
        response.sendRedirect("users");
    }

    private User getUserForUpdate(int id){
        User user = userDAO.getUserById(id);
        return user;
    }
}
