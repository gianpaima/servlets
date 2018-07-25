package zone.webtraining.museums.servlets;

import zone.webtraining.museums.pojos.User;
import zone.webtraining.museums.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/users")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //Get users
        UserService usersService = new UserService();
        List<User> users = usersService.getAll();

        resp.getWriter().write("users");
    }
}
