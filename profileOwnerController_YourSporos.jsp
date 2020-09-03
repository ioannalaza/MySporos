<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page import = "java.util.List"%>
<%@ page errorPage="apperror_YourSporos.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
</head>
<body>
		<% 
			String requestIdS = request.getParameter("requestId");
			int requestId = Integer.parseInt(requestIdS);	
			
			String answerWannaBeS = request.getParameter("answerWannaBe");
			int answerWannaBe = Integer.parseInt(answerWannaBeS);	
			
			RequestDAO_YourSporos rdao = new RequestDAO_YourSporos();
			rdao.updateRequest(requestId, answerWannaBe);			
			
		%>
    <jsp:forward page="profileOwner_YourSporos.jsp"/>;
</body>