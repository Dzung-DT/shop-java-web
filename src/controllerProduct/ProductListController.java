package controllerProduct;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.CategoryService;
import service.ProductService;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;
@WebServlet(urlPatterns = "/admin/product/list")
public class ProductListController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> products = productService.search("");
		req.setAttribute("productList", products);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/product/listProduct.jsp");
		dispatcher.forward(req, resp);
	}
}
