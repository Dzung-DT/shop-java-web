package controllerAdmin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.Category;
import model.Product;
import service.CategoryService;
import service.impl.CategoryServiceImpl;
@WebServlet(urlPatterns="/admin/category/edit")
public class EditCategoryController extends HttpServlet{
	CategoryService categoryService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("cateId");
		Category category = categoryService.get(Integer.parseInt(id));
		req.setAttribute("category", category);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/category/editCate.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Category category = new Category();
		category.setId(Integer.parseInt(req.getParameter("id")));
		category.setName(req.getParameter("name_cate"));
		categoryService.edit(category);
		
		resp.sendRedirect(req.getContextPath()+"/admin/category/list");
	}
}
