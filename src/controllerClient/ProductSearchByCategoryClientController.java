package controllerClient;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.ProductService;
import service.impl.ProductServiceImpl;

@WebServlet(urlPatterns="/client/view/product/category")
public class ProductSearchByCategoryClientController extends HttpServlet{
	ProductService productService=new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cate_id=req.getParameter("cate_id");
		List<Product> productSeachByCategory =productService.seachByCategory(Integer.parseInt(cate_id));
		req.setAttribute("productSeachByCategory", productSeachByCategory);
		req.getRequestDispatcher("/view/client/productSearchByCategoryClient.jsp").forward(req, resp);
		
	}
}
