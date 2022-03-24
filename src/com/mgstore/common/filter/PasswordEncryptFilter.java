package com.mgstore.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.mgstore.common.wrapper.EncryptRequestWrapper;



/* member 서비스인 경우에 한정해서 암호화 처리 할 수 있도록 한다. 
 * (예) /member/login
 * 	   /member/logout
 *     /board/list
 *     /thumbnail/list
 * */
@WebFilter("/member/*")
public class PasswordEncryptFilter implements Filter {

	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		/* 로그인을 하는 경우 자동 암호화된 값으로 비교하게 되면 비교할 수 없다.
		 * 로그인 요청은 암호화하는 필터에서 암호화 처리 되지 않도록 해준다.
		 * */
		HttpServletRequest hrequest = (HttpServletRequest) request;
		
		String uri = hrequest.getRequestURI();
		System.out.println("uri : " + uri);
		
		String intent = uri.substring(uri.lastIndexOf("/"));
		System.out.println("intent : " + intent);
		
		/* 로그인 요청이 아닌 경우에만 암호화를 한다. */
		if(!"/login".equals(intent)) {
			
			EncryptRequestWrapper wrapper = new EncryptRequestWrapper(hrequest);
			
			chain.doFilter(wrapper, response);
		} else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {}

}
