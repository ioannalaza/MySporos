<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="apperror_YourSporos.jsp"%>

<%
session.invalidate();
%>

<jsp:forward page="home_YourSporos.jsp" />;