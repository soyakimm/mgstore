package com.mgstore.common.wrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncryptRequestWrapper extends HttpServletRequestWrapper {
	
	/* 부모쪽에 기본생성자가 존재하지 않기 때문에 request를 전달해주는 생성자가 필요하다. */
	public EncryptRequestWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String key) {
		
		String value = "";
		if("memberPwd".equals(key)) {
			/* 스프링 시큐리티중 BCrypt 암호화를 제공해주는 라이브러리를 추가한 후 암호화 처리 한다.
			 * ★ sprint-security-crypto 라이브러리를 다운받아서 사용하면 되는데 ★ 
			 * 그냥 저거만 쓰면 의존관계에 있는 다른 라이브러리가 필요해서 ClassNotFoundException이 발생하게 된다.
			 * commons-logging 라이브러리도 추가해주자. 그럼 서블릿쪽의 출력 내용은 암호화된 패스워드로 변경될 것이다.
			 * */
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			value = passwordEncoder.encode(super.getParameter(key));
		} else {
			value = super.getParameter(key);
		}
		
		return value;
	}
	

}
