package com.mgstore.user.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mgstore.user.model.dto.UserDTO;
import com.mgstore.user.model.service.UserService;

@WebServlet("/user/sendemail")
public class UserEmailSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserEmailSendServlet() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/user/findPwdForm.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");

		String code = request.getParameter("code");
		
		UserDTO requestUser = new UserDTO();
		requestUser.setUserId(userId);
		requestUser.setUserName(userName);
		requestUser.setEmail(email);
		
		UserService userService = new UserService();
		Integer result = userService.findPwd(requestUser, code);
		
		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/user/loginForm.jsp";
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "임시 비밀번호를 저장하는 데에 실패하였습니다.");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Properties props = System.getProperties();
		/*
		 * props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		 * props.put("mail.smtp.socketFactory.port", "587");
		 * props.put("mail.smtp.starttls.enable", "true");
		 * props.put("mail.smtp.socketFactory.fallback", "false");
		 * props.put("mail.smtp.debug", "true");
		 */
		
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465"); 
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		
		Authenticator auth = new Authentication("mail.mgstore@gmail.com", "HelloMG0401!");
		
		Session session = Session.getDefaultInstance(props, auth);
		
		MimeMessage msg = new MimeMessage(session);
		
		try {
			/* 발송일시 */
			msg.setSentDate(new Date());
			
			/* 발송자 */
			InternetAddress from = new InternetAddress("멍개상점<mail.mgstore@gmail.com>");
			msg.setFrom(from);
			
			/* 수신자 */
			String email = request.getParameter("email");
			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(Message.RecipientType.TO, to);
			
			/* 이메일 제목 */
			msg.setSubject("[멍개상점] 회원가입 이메일 인증코드 입니다", "UTF-8");
			
			/* 이메일 내용 */
			String code = request.getParameter("code");
			request.setAttribute("code", code);
			msg.setText("<h3>안녕하세요. 멍개상점 회원가입 위한 이메일 인증코드 안내 메일입니다.<h3><br>"
					  + "<h3>요청하신 인증코드는 <h3>" + code + "<h3>입니다.<h3><br>");
			
			/* 이메일 헤더 */
			msg.setHeader("content-Type", "text/html");
			
			/* 이메일 발송 */
			javax.mail.Transport.send(msg);
			
			System.out.println("이메일 인증코드 발송 완료");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}

class Authentication extends Authenticator {
	
	protected static String username = "";
	protected static String password = "";
	
	public Authentication(String id, String pwd) {
		username = id;
		password = pwd;
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(username, password);
	}
}
