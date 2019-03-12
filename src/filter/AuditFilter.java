package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.JDBCConnection;
import model.Counter;
import service.CounterService;
import service.PersonService;
import service.impl.CounterServiceImpl;
import service.impl.PersonServiceImpl;

@WebFilter(urlPatterns = { "/login" })
public class AuditFilter extends JDBCConnection implements Filter {
	CounterService counterService = new CounterServiceImpl();
	private int counter = 0;

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	
		Counter c = new Counter();
		counter++;
		int count = counter;
		c.setNumber(count);
		counterService.create(c);
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
