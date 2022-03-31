package com.mgstore.user.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/resetpwd")
public class UserEmailTempPwdServlet extends HttpServlet {
	
    public UserEmailTempPwdServlet() {
        super();
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
			msg.setSubject("[멍개상점] 임시 비밀번호 안내", "UTF-8");
			
			/* 이메일 내용 */
			String code = request.getParameter("code");
			request.setAttribute("code", code);
			msg.setText("<h3>안녕하세요. 멍개상점 임시 비밀번호 안내 메일입니다.<h3><br>"
					  + "<h3>회원님의 임시 비밀번호는 <h3>" + code + "<h3>입니다.<h3><br>");
			
			/* 이메일 헤더 */
			msg.setHeader("content-Type", "text/html");
			
			/* 이메일 발송 */
			javax.mail.Transport.send(msg);
			
			System.out.println("임시 비밀번호 발송 완료");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/views/user/findPwdResultForm.jsp").forward(request, response);
	}
}
