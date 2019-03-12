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

@WebServlet(urlPatterns="/admin/cart-item/add")//?productId=1
public class CartItemController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String productId = req.getParameter("productId");
		Product product = productService.get(Integer.parseInt(productId));		
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");
		if( obj == null) {
			CartItem cartItem = new CartItem();
			cartItem.setBuyQuantity(1);
			cartItem.setProduct(product);
			cartItem.setSellPrice(product.getPrice());		
			Map<Integer,CartItem> mapCartItem = new HashMap<>();
			mapCartItem.put(product.getId(),cartItem);
			session.setAttribute("cart", mapCartItem);
		}else {
			Map<Integer,CartItem> mapCartItem = (Map<Integer,CartItem>)obj;	
			CartItem item = mapCartItem.get(product.getId());
			if(item==null) {
				CartItem cartItem = new CartItem();
				cartItem.setBuyQuantity(1);
				cartItem.setProduct(product);
				cartItem.setSellPrice(product.getPrice());
				mapCartItem.put(product.getId(),cartItem);
			}else {
				item.setBuyQuantity(item.getBuyQuantity()+1);
			}
			session.setAttribute("cart", mapCartItem);
		}
		
		resp.sendRedirect(req.getContextPath() + "/admin/cart-item/list");//page cart
	}
}
