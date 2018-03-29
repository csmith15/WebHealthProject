

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
 * Servlet implementation class main_page
 */
@WebServlet("/main_page")
public class main_page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public main_page() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("username");
		//int i=0;
		  //String username = request.getParameter("usr");
		/*String fname = null;
		  String lname = null;
		  String birthday = null;
		  String age = null;
		  String city = null;
		  String country = null;
		  String hobbies = null;
		  String type = null;
		  String bio = null;
		  *///LoginServlet frame = new LoginServlet();
		  //String tuser = frame.user;
		  Connection con = null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PreparedStatement ps = null;
		try {
			ps = (PreparedStatement) con.prepareStatement("SELECT * FROM users WHERE email=?");
			ps.setString(1, username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ResultSet rst = null;
		try {
			rst = ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while(rst.next()){
				 //String id=rst.getString(1);
				 //String email=rst.getString(2);
				 //String pass=rst.getString("password");
				 request.setAttribute("fname", rst.getString("fname"));
				 request.setAttribute("lname", rst.getString("lname"));
				 request.setAttribute("age", rst.getString("age"));
				 request.setAttribute("birthday", rst.getString("birthday"));
				 request.setAttribute("country", rst.getString("country"));
				 request.setAttribute("city", rst.getString("city"));
				 request.setAttribute("type", rst.getString("type"));
				 request.setAttribute("bio", rst.getString("bio"));
				 request.setAttribute("hobbies", rst.getString("hobbies"));
				//out.println("Username "+username+"\nPass "+lname+"<hr>"+email);
				 //System.out.print(request.getAttribute("fname"));
				 if(request.getAttribute("fname")==null) {
					 request.setAttribute("fname", "(N/A)");
				 }
				 if(request.getAttribute("lname")==null) {
					 request.setAttribute("lname", "(N/A)");
				 }
				 if(request.getAttribute("birthday")==null) {
					 request.setAttribute("birthday", "(N/A)");
				 }
				 if(request.getAttribute("age")==null) {
					 request.setAttribute("age", "(N/A)");
				 }
				 if(request.getAttribute("country")==null) {
					 request.setAttribute("country", "(N/A)");
				 }
				 if(request.getAttribute("bio")==null) {
					 request.setAttribute("bio", "(N/A)");
				 }
				 if(request.getAttribute("city")==null) {
					 request.setAttribute("city", "(N/A)");
				 }
				 if(request.getAttribute("type")==null) {
					 request.setAttribute("type", "(N/A)");
				 }
				 if(request.getAttribute("hobbies")==null) {
					 request.setAttribute("hobbies", "(N/A)");
				 }
				 
				 
				 response.getWriter().append("Served at: ").append(request.getContextPath());
			     request.getRequestDispatcher("Profile.jsp").forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
       
		
		//doGet(request, response);
	}

}
