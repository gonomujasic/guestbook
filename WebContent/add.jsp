<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	GuestbookDao dao = new GuestbookDao();
	GuestbookVo vo = new GuestbookVo();
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	dao.insert(vo);
	
	response.sendRedirect("/guestbook/index.jsp");
%>