 package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Person;
import utils.CommonConstant;

//BAT BUOC TAT CA CRUD user phai login truoc
@WebFilter(urlPatterns = { "/admin/*" })
public class AdminSecurityFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();

		Object obj = session.getAttribute("user");
		
		if (obj == null) {
			
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		} else {
			
			Person p = (Person) obj;
			CommonConstant commonConstant  = new CommonConstant();
			if (commonConstant.ROLE_ADMIN.equals(p.getRole())) {
				chain.doFilter(request, response);	
			} else {				
				RequestDispatcher dispatcher = 
						req.getRequestDispatcher("/view/accessDeny.jsp");
						dispatcher.forward(req, resp);
			}
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
