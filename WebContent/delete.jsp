<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.sungkyul.guestbook.dao.GuestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");
	String password = request.getParameter("password");
	System.out.println(password);
	
	Long no = Long.parseLong(request.getParameter("no"));
	
	GuestbookVo vo = new GuestbookVo();
	GuestbookDao dao = new GuestbookDao();
	String pass = dao.pass(no);
	
	if(pass.equals(password)){
		dao.delete(no);
	} else{
%>
		비밀번호가 일치하지 않습니다.
<%
	}
	response.sendRedirect("/guestbook/index.jsp");
%>