

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class scheduleServlet2
 */
@WebServlet("/scheduleServlet2")
public class scheduleServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public scheduleServlet2() {
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
		HttpSession session = request.getSession();
		String username=(String) session.getAttribute("username");
		 
		String title = request.getParameter("title");
		String purpose = request.getParameter("purpose");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		try{   
			   
			   String driverName = "com.mysql.jdbc.Driver"; //driver name
			   
			   Class.forName(driverName).newInstance();
			   Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root" , "root");
			            
			   String check_sql = "SELECT * FROM appoint";
			   PreparedStatement check = (PreparedStatement) con.prepareStatement(check_sql);
			   
			   ResultSet rs = check.executeQuery();
			   
			   
			   
			    String insert_sql = "insert into appoint (title, purpose, date, time, email) values(?, ?, ?, ?, ?)";  
			    
			    PreparedStatement ps = (PreparedStatement) con.prepareStatement(insert_sql); 
			    ps.setString(1, title);
			    ps.setString(2, purpose);
			    ps.setString(3, date);
			    ps.setString(4, time);
			    ps.setString(5, username);
			         
			    ps.executeUpdate();
			    //response.sendRedirect("../Main Page.jsp");
			    System.out.println("Registration done");
			    response.getWriter().append("Served at: ").append(request.getContextPath());
			     request.getRequestDispatcher("scheduleServlet").forward(request, response);
			     System.out.println("Registration done2");
			    //response.sendRedirect("../WebContent/WEB-INF/Main Page.jsp");
			    //count++;
			    //if(count>0) {
			   // out.println("Registered Successfully");
			    //}
			    //ps.close();                 
			    //con.close();   
			    
			    }
			catch (Exception e) {  
			        e.printStackTrace();  
			    }
	}

}
