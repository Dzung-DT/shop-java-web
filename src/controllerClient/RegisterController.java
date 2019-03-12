package controllerClient;

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

import model.Person;
import service.PersonService;
import service.impl.PersonServiceImpl;
import utils.CommonConstant;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet{
	PersonService personService = new PersonServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String err = req.getParameter("err");
		if (err != null && err.equals("2")) {
			req.setAttribute("msg2", "Thong tin khong duoc trong");
		}
		
		RequestDispatcher dispatcher = 
		req.getRequestDispatcher("/view/client/register.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Person user = new Person();
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
			
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("username")) {
					String uName = item.getString();
					user.setUsername(uName);
				} else if (item.getFieldName().equals("password")) {
					String uPass = item.getString();
					user.setPassword(uPass);
				} else if (item.getFieldName().equals("name")) {
					String name = item.getString();
					user.setName(name);
				} else if (item.getFieldName().equals("age")) {
					String age = item.getString();
					if(age.equals("")) {
						resp.sendRedirect(req.getContextPath() + "/register?err=2");
					}
					user.setAge(Integer.parseInt(age));
				} else if (item.getFieldName().equals("address")) {
					String address = item.getString();
					user.setAdd(address);			
				} else if (item.getFieldName().equals("avatarFile")) {
					String location = "D:\\user\\";
					String fileName = System.currentTimeMillis() + ".jpg";
					File file = new File(location + fileName);
					item.write(file);				
					user.setAvatarFileName(fileName);
				} 
			}
			CommonConstant commonConstrant = new CommonConstant();
			String role = commonConstrant.ROLE_MEMBER;
			user.setRole(role);
			if(user.getName().equals("")||user.getPassword().equals("")||
					user.getUsername().equals("")||user.getAvatarFileName().equals("")
					||user.getAdd().equals("")) {
				resp.sendRedirect(req.getContextPath() + "/register?err=2");
			}else {
				personService.create(user);
				resp.sendRedirect(req.getContextPath() + "/index");
			}			
		} catch (Exception ex) {
			System.out.println(ex);
		}
	}
}
