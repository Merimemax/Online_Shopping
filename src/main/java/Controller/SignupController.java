package Controller;

import Domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SignupController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User u=new User(req.getParameter("un"),req.getParameter("pass"));
        req.getSession().setAttribute("sun",u);
        req.getRequestDispatcher("/login").forward(req,resp);
    }
}
