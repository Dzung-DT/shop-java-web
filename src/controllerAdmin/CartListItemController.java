package controllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Person;
import service.PersonService;
import service.impl.PersonServiceImpl;
@WebServlet(urlPatterns="/admin/cart-item/list")
public class CartListItemController extends HttpServlet{
	PersonService personService = new PersonServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Person> persons = personService.search("");
		req.setAttribute("persons",persons);

		RequestDispatcher rd = req.getRequestDispatcher("/view/admin/cart.jsp");
		rd.forward(req, resp);
		
	}
}
