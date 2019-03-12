package controllerAdmin;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

@WebServlet(urlPatterns = "/image")//?fileName=abc.jpg
public class DownloadImageController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fileName = req.getParameter("fileName");
		String location = "D:\\user\\";
		
		File file = new File(location + fileName);
		
		//response
		resp.setContentType("image/png");
		
		IOUtils.copy(new FileInputStream(file), resp.getOutputStream());
	}
}
