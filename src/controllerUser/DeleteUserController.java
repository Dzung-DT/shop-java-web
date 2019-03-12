package controllerUser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PersonService;
import service.impl.PersonServiceImpl;

@WebServlet(urlPatterns = "/admin/user/delete")//?uid=123
public class DeleteUserController extends HttpServlet {
	PersonService personService = new PersonServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("uid");//doc gia tri tu duong dan
		
		personService.delete(Integer.parseInt(id));//convert sang int
		/// CHUYEN VE TRANG DS NGUOI DUNG
		resp.sendRedirect(req.getContextPath() + "/admin/user/list");
	}

}
