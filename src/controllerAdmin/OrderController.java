package controllerAdmin;

import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.CartItem;
import model.Person;
import service.CartItemService;
import service.CartService;
import service.PersonService;
import service.impl.CartServiceImpl;
import service.impl.CartServiceItemImpl;
import service.impl.PersonServiceImpl;
@WebServlet(urlPatterns="/admin/order/add")
public class OrderController extends HttpServlet{
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();
	PersonService personService = new PersonServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String buyerId = req.getParameter("buyerId");
		Cart cart = new Cart();	
		cart.setBuyDate(new Date());
		Person buyer = personService.get(Integer.parseInt(buyerId));
		cart.setBuyer(buyer);
		cartService.insert(cart);
		Object obj = session.getAttribute("cart");
		if( obj != null) {	
			Map<Integer,CartItem> mapCartItem = (Map<Integer,CartItem>)obj;
			Set<Integer> keys = mapCartItem.keySet();
			for(Integer k : keys) {
				CartItem cartItem = mapCartItem.get(k);
				cartItem.setCart(cart);
				cartItemService.insert(cartItem);
			}
		}
		session.removeAttribute("cart");
		resp.sendRedirect(req.getContextPath() + "/admin");//page cart
	}
}
