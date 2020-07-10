package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Base64;
import java.util.Date;
import java.text.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBean;
import model.UserDAOImp;

@SuppressWarnings("serial")
@WebServlet("/registrazione")
public class RegistrazioneControl extends HttpServlet {

	public RegistrazioneControl() {
		super();
		this.model = new UserDAOImp();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String dataN = request.getParameter("dataNascita");
		Date dataNascita;
		
		UserBean user = new UserBean();
		
		try {
			dataNascita = new SimpleDateFormat().parse(dataN);
			user.setDataNascita(dataNascita);
		} catch (ParseException e1) {
		}
		Date dataRegistrazione = new Date();
		
		//Codifica della password
		Base64.Encoder enc = Base64.getEncoder();
		String encodedPass = enc.encodeToString(password.getBytes());
		
		user.setEmail(email);
		user.setPassword(encodedPass);
		user.setNome(nome);
		user.setCognome(cognome);
		user.setDataRegistrazione(dataRegistrazione);
		
		
		try {
			
			if(user!=null) {
				
				model.doSave(user);
				
			}
		} catch (SQLException e) {
			System.out.println("Error: "+e.getMessage());
		}
		
		
		response.sendRedirect("/Login.jsp");
		
	}
	
	private static final long serialVersionUID = 1L;
	private UserDAOImp model;
}
