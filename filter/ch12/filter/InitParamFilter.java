package ch12.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class InitParamFilter implements Filter {

	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
		System.out.println("Filter02 초기화");
		this.filterConfig = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter02 수행");
		
		//입력값
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//xml에서 설정한 init-param 요소에 설정된 매개변수와 값에 접근
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		String message;
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8"); //형태에 익숙해지기
		PrintWriter writer = response.getWriter();
		
		if (id.equals(param1) && pw.equals(param2)) {
			message = "로그인 성공해습니다.";
		}else {
			message = "로그인 실패했습니다.";
		}
		
		writer.println("message");
		
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		Filter.super.destroy();
		System.out.println("Filter02 해제");
	}
}
