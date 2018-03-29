

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.servlet4preview.RequestDispatcher;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getContextPath(); 
		String destination = "/WebContent/WEB-INF/Main Page.jsp";
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
		PrintWriter out = response.getWriter();
		String fname = request.getParameter("fname");
		String type = request.getParameter("type");
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		String age = request.getParameter("age");
		String bday = request.getParameter("bday");
		String lname = request.getParameter("lname");
		String password = request.getParameter("pwd");
		String email = request.getParameter("email");
		int id = 1;
		int ids[] = new int[1000];
		int counter=0;
		boolean clear = false;
		int i = 0;
		int count=0;
		        
		try{   
		   
		   String driverName = "com.mysql.jdbc.Driver"; //driver name
		   
		   Class.forName(driverName).newInstance();
		   Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/web", "root" , "root");
		            
		   String check_sql = "SELECT * FROM users";
		   PreparedStatement check = (PreparedStatement) con.prepareStatement(check_sql);
		   
		   ResultSet rs = check.executeQuery();
		   
		   /*while(rs.next()){
		        ids[counter] = rs.getInt("s_id");
		        counter++;
		   }
		   do{
		        clear = true;
		        i = 0;
		        do{
		            if (id == ids[i]){
		                id++;
		                clear = false;
		            }
		            i++;
		        } while (i != ids.length);
		    } while (clear == false);
		  */
		   
		    String insert_sql = "insert into users (email, password, fname, lname, birthday, age, country, city, type) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";  
		    
		    PreparedStatement ps = (PreparedStatement) con.prepareStatement(insert_sql); 
		    ps.setString(1, email);
		    ps.setString(2, password);
		    ps.setString(3, fname);
		    ps.setString(4, lname);
		    ps.setString(5, bday);
		    ps.setString(6, age);
		    ps.setString(7, country);
		    ps.setString(8, city);
		    ps.setString(9, type);
		         
		    ps.executeUpdate();
		    //response.sendRedirect("../Main Page.jsp");
		    System.out.println("Registration done");
		    response.sendRedirect("Login.jsp");
		    //count++;
		    //if(count>0) {
		   // out.println("Registered Successfully");
		    //}
		   // ps.close();                 
		    //con.close();   
		    //response.getWriter().append("Served at: ").append(request.getContextPath());
		     //request.getRequestDispatcher("Profile.jsp").forward(request, response);
		
		    }
		catch (Exception e) {  
		        e.printStackTrace();  
		    }
		//doGet(request, response);
	}

}
