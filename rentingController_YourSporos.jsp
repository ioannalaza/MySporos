<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page import = "java.util.List"%>

<!DOCTYPE html>
<html lang="en">
	<body>

	
		<%  
		
		
		if (session.getAttribute("login-customer-object") == null) {
			
			String requestRentingSpaceS = request.getParameter("requestRentingSpace");
			int requestRentingSpace = Integer.parseInt(requestRentingSpaceS);

			String requestAnswerS = request.getParameter("requestAnswer");
			int requestAnswer = Integer.parseInt(requestAnswerS);

			String fieldIdS = request.getParameter("fieldId");
			int fieldId = Integer.parseInt(fieldIdS);	

			String ownerIdS = request.getParameter("ownerId");
			int ownerId = Integer.parseInt(ownerIdS); 
			
			session.setAttribute("requestRentingSpace",requestRentingSpace);
			session.setAttribute("requestAnswer",requestAnswer);
			session.setAttribute("fieldId",fieldId);
			session.setAttribute("ownerId",ownerId);
			
			String steileKsanaRenting = "steile";
			session.setAttribute("steileKsanaRenting",steileKsanaRenting);

			%>	
					
			<jsp:forward page="login_YourSporos.jsp"/>;
			
	<%	}	%>	

	<%	Customer_YourSporos customer = (Customer_YourSporos) session.getAttribute("login-customer-object");
		CustomerDAO_YourSporos cdao = new CustomerDAO_YourSporos();
		int customerId = cdao.getCustomerId(customer.getCustomerUsername()); 
		
		String requestRentingSpaceS = request.getParameter("requestRentingSpace");
		int requestRentingSpace = Integer.parseInt(requestRentingSpaceS);

		String requestAnswerS = request.getParameter("requestAnswer");
		int requestAnswer = Integer.parseInt(requestAnswerS);

		String fieldIdS = request.getParameter("fieldId");
		int fieldId = Integer.parseInt(fieldIdS);	

		String ownerIdS = request.getParameter("ownerId");
		int ownerId = Integer.parseInt(ownerIdS);	

		Request_YourSporos requestys = new Request_YourSporos(requestRentingSpace,requestAnswer,customerId,fieldId,ownerId);
		RequestDAO_YourSporos rdao = new RequestDAO_YourSporos();
		rdao.registerRequest(requestys);
		
	%>
	
	<jsp:forward page="profileCustomer_YourSporos.jsp" />;	

	
	</body>
</html>