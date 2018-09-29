package Controller;

import Domain.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product product1=new Product("p1","Samsung S7 edge",700,"/resources/images/1.jpg");
        Product product2=new Product("p2","Samsung S8 edge",800,"/resources/images/1.jpg");
        req.getSession().setAttribute("p1",product1);
        req.getSession().setAttribute("p2",product2);
        req.getRequestDispatcher("/views/homes.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
