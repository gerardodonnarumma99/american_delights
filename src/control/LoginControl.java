package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.*;

import model.UserBean;
import model.UserDAOImp;
import service.message.Message;


@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginControl extends HttpServlet {

	public LoginControl() {
		super();
		this.model = new UserDAOImp();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.sendRedirect("./login.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Base64.Encoder enc = Base64.getEncoder();
		String encodedPass = enc.encodeToString(password.getBytes());
		
		
		try {
			
			if( !model.isUsername(username) ) {
				PrintWriter out = response.getWriter();
				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				response.setStatus(401);
				
				Gson json = new Gson();
				
				Message mess = new Message("error","Username non esistente");
				String jsonString = json.toJson(mess);
				
				out.print(jsonString);
				out.flush();
				return;
						
			}
			UserBean user = model.doRetrieveByKey(username,encodedPass);
			if( user == null ) {
				PrintWriter out = response.getWriter();
				response.setContentType("application/json");
				response.setCharacterEncoding("UTF-8");
				response.setStatus(401);
				
				Gson json = new Gson();
				
				Message mess = new Message("error","Username e password non coincidono");
				String jsonString = json.toJson(mess);
				
				out.print(jsonString);
				out.flush();
				
				return;
			}
			if(user!=null) {
				request.getSession(true);
				
				request.getSession().setAttribute("user",user);
			}
		} catch (SQLException e) {
			System.out.println("Error: "+e.getMessage());
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private static final long serialVersionUID = 1L;
	private UserDAOImp model;
}
