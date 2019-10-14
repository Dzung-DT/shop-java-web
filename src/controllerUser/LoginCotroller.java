package controllerUser;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Person;
import service.PersonService;
import service.impl.PersonServiceImpl;
import utils.CommonConstant;

@WebServlet(urlPatterns = "/login")
public class LoginCotroller extends HttpServlet{
PersonService personService = new PersonServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String err = req.getParameter("err");
		if (err != null && err.equals("1")) {
			//loi sai ten dang nhap
			req.setAttribute("msg", "Sai ten hoac mat khau");
		}
		
		RequestDispatcher dispatcher = 
		req.getRequestDispatcher("/view/admin/login.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uName = req.getParameter("username");
		String uPass = req.getParameter("password");
		Person p = personService.login(uName, uPass);
		CommonConstant commonConstant = new CommonConstant();
		if (p != null) {
			HttpSession session = req.getSession();
			session.setAttribute("user", p);
			if(commonConstant.ROLE_ADMIN.equals(p.getRole())) {
				resp.sendRedirect(req.getContextPath() + "/admin");
				return;
			}else {
				resp.sendRedirect(req.getContextPath() + "/view/product-list");
				return;
			}		
		} else {
			resp.sendRedirect(req.getContextPath() + "/login?err=1");
		}

		}
}
