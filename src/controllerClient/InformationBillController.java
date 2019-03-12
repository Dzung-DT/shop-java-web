package controllerClient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/client/informationBill")
public class InformationBillController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String name = firstName + " " + lastName;
		req.setAttribute("fullname",name);
		String phone = req.getParameter("phoneOrder");
		req.setAttribute("phoneO",phone);
		String email = req.getParameter("emailOrder");
		req.setAttribute("emailO",email);
		String address = req.getParameter("deliveryAddress");
		req.setAttribute("deliveryAdd",address);
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/view/client/BillInformation.jsp");
				dispatcher.forward(req, resp);		
	}
}
