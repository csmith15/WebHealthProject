

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		  
		  
	}
	//public String user;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		  PrintWriter out = response.getWriter();
		  String username = request.getParameter("usr");   
	      String password = request.getParameter("pwd");
	      
	      
	      
	      
		  /*String lname = null;
		  String birthday = null;
		  String age = null;
		  String city = null;
		  String country = null;
		  String hobbies = null;
		  String type = null;
		  String bio = null;
		  */
	      //request.setAttribute("name", "username");
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}  // MySQL database connection
	        Connection conn = null;
			try {
				conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root" , "root");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}    
	         PreparedStatement pst = null;
			try {
				pst = (PreparedStatement) conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
				//rs = pst.executeQuery();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        try {
				pst.setString(1, username);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        try {
				pst.setString(2, password);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	        ResultSet rs = null;
			try {
				rs = pst.executeQuery();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}      
			try {
				if(rs.next()) {

					while(rs.next()){
						 //String fname=null;
						 //request.setAttribute(fname, rs.getString("fname"));
						 
						System.out.println(request.getAttribute("done"));
						 }
					
					//request.setAttribute(fname,rs.getString("fname"));
					//fname=rs.getString("fname");
					HttpSession session = request.getSession();
				      //session.setAttribute("fname", fname);
					
				      //HttpSession session = request.getSession();
				      session.setAttribute("username", username);
				      request.getRequestDispatcher("mainpage.jsp").forward(request, response);
				
					//System.out.println("InValid login credentials");    
					//if password or username is invalid
				
					}
				else
				{ 
					response.sendRedirect("Login.jsp");
					
					//HttpSession session = request.getSession();
					//session.setAttribute("yourDataKey",yourDataValue );
					//response.getWriter().append("Served at: ").append(request.getContextPath());
			        //request.getRequestDispatcher("/mainpage.jsp").forward(request, response);
						//out.println("valid login credentials");            
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				
			}
	        
	}

}
