import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import classes_yoursporos.*;

public class LoginController_YourSporos extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = new PrintWriter(response.getWriter(), true);
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try{
			CustomerDAO_YourSporos customerDao = new CustomerDAO_YourSporos();
			if (customerDao.findUser(username) != null) {
				if (customerDao.authenticate(username,password)) {
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("/profile_YourSporos.jsp");
					requestDispatcher.forward(request, response);
				} else {
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("../login_YourSporos.jsp");
					requestDispatcher.forward(request, response);
				}
			}
		} catch (Exception ex){
			out.println("Exception: " + ex.getMessage());
			out.println("</body>");
			out.println("</html>");
			
		}

		}
		
		
}


			
			
