package controllerClient;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CartItem;
@WebServlet(urlPatterns="/client/checkout")
public class CheckOutController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		double sum = 0;
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");
		Map<Integer,CartItem> mapCartItem = (Map<Integer,CartItem>)obj;	
		Set<Integer> set = mapCartItem.keySet();
		for(Integer key : set) {
			sum += mapCartItem.get(key).getBuyQuantity()*mapCartItem.get(key).getSellPrice();
		}
		session.setAttribute("sum", sum);
		RequestDispatcher rd = req.getRequestDispatcher("/view/client/checkout.jsp");
		rd.forward(req, resp);
	}
}
