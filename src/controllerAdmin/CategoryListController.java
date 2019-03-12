package controllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import service.CategoryService;
import service.impl.CategoryServiceImpl;

@WebServlet(urlPatterns = "/admin/category/list")
public class CategoryListController extends HttpServlet {
	CategoryService categoryService = new CategoryServiceImpl();	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Category> cateList = categoryService.getAll();	
		req.setAttribute("cateList", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/category/listCate.jsp");
		dispatcher.forward(req, resp);
	}
}
