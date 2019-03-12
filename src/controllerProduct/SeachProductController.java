package controllerProduct;

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
import model.Product;
import service.ProductService;
import service.impl.ProductServiceImpl;
@WebServlet(urlPatterns="/admin/product/search")
public class SeachProductController extends HttpServlet{
	ProductService productService = new ProductServiceImpl(); 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nameProduct = req.getParameter("nameProduct");
		
		List<Product> products = productService.search(nameProduct);//tim tat ca
		
		
		req.setAttribute("productList", products);
		
		HttpSession session = req.getSession();
		
		Object obj = session.getAttribute("user");
		
		if (obj == null) {		
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		} else {				
			Person p = (Person) obj;//ep xuong thang con de lay thong tin
		}
			
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/view/admin/product/listProduct.jsp");
				dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
