package controllerProduct;

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
import model.Person;
import model.Product;
import service.CategoryService;
import service.ProductService;
import service.impl.CategoryServiceImpl;
import service.impl.ProductServiceImpl;
@WebServlet(urlPatterns = "/admin/product/edit") 
public class EditProductController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("pid");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		req.setAttribute("categories", categories);
		req.setAttribute("product", product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/product/editProduct.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Product product = new Product();
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload servletFileUpload = new ServletFileUpload(factory);		
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("name")) {
					String name = item.getString();
					product.setName(name);
				} else if (item.getFieldName().equals("quantity")) {
					String quantity = item.getString();
					product.setQuantity(Integer.parseInt(quantity));
				} else if (item.getFieldName().equals("price")) {
					String price = item.getString();
					product.setPrice(Float.parseFloat(price));
				} else if(item.getFieldName().equals("category")) {
					product.setCategory(categoryService.get(item.getString()));
				} else if (item.getFieldName().equals("description")) {
					String desc = item.getString();
					product.setDescription(desc);			
				} else if (item.getFieldName().equals("productFile")) {
					String location = "D:\\product\\";
					String fileName = System.currentTimeMillis() + ".jpg";
					File file = new File(location + fileName);
					item.write(file);				
					product.setProductFileName(fileName);
				} else if(item.getFieldName().equals("id")){
					String id = item.getString();
					product.setId(Integer.parseInt(id));
				}
			}
			productService.update(product);
			resp.sendRedirect(req.getContextPath() + "/admin/product/list");
		} catch (Exception ex) {
			System.out.println(ex);
		}
	}
}
