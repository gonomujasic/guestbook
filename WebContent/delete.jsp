<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
GuestbookDao dao = new GuestbookDao();
GuestbookVo vo = new GuestbookVo();

vo.setNo(Long.parseLong(request.getParameter("no")));
vo.setPassword(request.getParameter("password"));

dao.delete(vo);
	response.sendRedirect("/guestbook/index.jsp");
%>