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

		// doc cookie tu client gui len
//		Cookie[] cookies = req.getCookies();
//		boolean check = false;
//		// kiem tra cho an chac neu ko co cookies
//		if (cookies != null) {
//			for (Cookie cookie : cookies) {
//				System.out.println(cookie.getName());
//				System.out.println(cookie.getValue());
//				// neu ton tai cookie name la username
//				// thi dong nghia van dang login
//				if (cookie.getName().equals("username")) {
//					System.out.println("Van dang login");
//					check = true;
//				}
//			}
//		}
//
//		if (!check) {//phu dinh
//			// da het thoi gian, bi logout
//			resp.sendRedirect(req.getContextPath() + "/login");
//			return;
//		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/user/listUser.jsp");
		dispatcher.forward(req, resp);
	}
}
