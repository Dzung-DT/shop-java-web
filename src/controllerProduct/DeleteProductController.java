package controllerProduct;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import service.impl.ProductServiceImpl;
@WebServlet(urlPatterns = "/admin/product/delete")
public class DeleteProductController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("pid");//doc gia tri tu duong dan	
		productService.delete(Integer.parseInt(id));
		resp.sendRedirect(req.getContextPath() + "/admin/product/list");
	}
}
