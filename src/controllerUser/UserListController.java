package controllerUser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Person;
import service.PersonService;
import service.impl.PersonServiceImpl;

@WebServlet(urlPatterns = "/admin/user/list")
public class UserListController extends HttpServlet {
	PersonService personService = new PersonServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Person> users = personService.search("");// tim tat ca

		/// day doi tuong list user sang view
		req.setAttribute("userList", users);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/user/listUser.jsp");
		dispatcher.forward(req, resp);
	}
}
