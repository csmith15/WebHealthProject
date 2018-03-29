

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
 * Servlet implementation class scheduleServlet
 */
@WebServlet("/scheduleServlet")
public class scheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scheduleServlet() {
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
		//doGet(request, response);
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
			System.out.print("done1");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			System.out.print("done2");
			con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PreparedStatement ps = null;
		try {
			ps = (PreparedStatement) con.prepareStatement("SELECT * FROM appoint WHERE email=?");
			ps.setString(1, username);
			System.out.print("done3");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ResultSet rst = null;
		try {
			rst = ps.executeQuery();
			System.out.print("done4");
			//int rows = rst.getRow();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			
			System.out.print("done5");
			while(rst.next()){
				 //String id=rst.getString(1);
				 //String email=rst.getString(2);
				 //String pass=rst.getString("password");
				 request.setAttribute("title", rst.getString("title"));
				 request.setAttribute("purpose", rst.getString("purpose"));
				 request.setAttribute("date", rst.getString("date"));
				 request.setAttribute("time", rst.getString("time"));
				 System.out.print("done");
				 //response.getWriter().append("Served at: ").append(request.getContextPath());
			     //request.getRequestDispatcher("Schedule.jsp").forward(request, response);
			}
			     //if (request.getAttribute("title")==null || request.getAttribute("purpose")==null || request.getAttribute("date")==null ||request.getAttribute("time")==null) {
					 //response.getWriter().append("Served at: ").append(request.getContextPath());
					  //   request.getRequestDispatcher("Schedule.jsp").forward(request, response);
					//}
			     
			    	 response.getWriter().append("Served at: ").append(request.getContextPath());
				     request.getRequestDispatcher("Schedule.jsp").forward(request, response);
			     
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			}

}
