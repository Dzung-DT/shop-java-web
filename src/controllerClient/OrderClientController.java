package controllerClient;

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
@WebServlet(urlPatterns="/client/order/add")
public class OrderClientController extends HttpServlet{
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();
	PersonService personService = new PersonServiceImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object objP = session.getAttribute("user");
		Person buyer = (Person) objP;
		int buyerId = buyer.getId();
		Cart cart = new Cart();	
		cart.setBuyDate(new Date());
		buyer = personService.get(buyerId);
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
		resp.sendRedirect(req.getContextPath() + "/client");
	}
}
