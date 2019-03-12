package controllerAdmin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CartItem;
import model.Product;
import service.ProductService;
import service.impl.ProductServiceImpl;

@WebServlet(urlPatterns="/admin/cart-item/delete")//?productId=1
public class CartDeleteItemController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String productId = req.getParameter("productId");		
		Product product = productService.get(Integer.parseInt(productId));
		
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");
		if( obj != null) {
			
			Map<Integer,CartItem> mapCartItem = (Map<Integer,CartItem>)obj;
			mapCartItem.remove(Integer.parseInt(productId));
			session.setAttribute("cart", mapCartItem);
		}
		
		resp.sendRedirect(req.getContextPath() + "/admin/cart-item/list");//page cart
	}
}

