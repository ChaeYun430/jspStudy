package ch12.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class AuthenFilter implements Filter{

	//필터의 역할을 떠올리고 대상을 인지한다.
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
		System.out.println("Filter01 초기화");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행");
		String name = request.getParameter("name");
		//init-param 요소에 설정된 매개변수, 값 불러오기
		if (name == null || name.equals("")) { //주소나 값이 null인 경우
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null입니다.";
			writer.println(message);
		}
		chain.doFilter(request, response);	
	}

	@Override
	public void destroy() {
		Filter.super.destroy();
		System.out.println("Filtr01 해제");
	}
	
}
