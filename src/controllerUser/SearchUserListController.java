package controllerUser;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Person;
import service.PersonService;
import service.impl.PersonServiceImpl;

@WebServlet(urlPatterns = "/admin/user/search")
public class SearchUserListController extends HttpServlet {
	PersonService personService = new PersonServiceImpl(); 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("keyword");		
		List<Person> users = personService.search(keyword);
		req.setAttribute("userList", users);
		HttpSession session = req.getSession();		
		Object obj = session.getAttribute("user");	
		if (obj == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		} else {
			Person p = (Person) obj;

		}
		
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/view/admin/user/listUser.jsp");
				dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
