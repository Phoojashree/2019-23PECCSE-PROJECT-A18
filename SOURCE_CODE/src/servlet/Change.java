package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconn.Dbconn;



/**
 * Servlet implementation class Change
 */
@WebServlet("/Change")
public class Change extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
String name = req.getParameter("id");
		
		String description = req.getParameter("description");
		
		
		
		int z=0;
		try {
		Connection con=Dbconn.create();
			Statement st= con.createStatement();
    		String sql="UPDATE ipspoof.stafffileadd a SET tldescription='"+description+"' where id='"+name+"'";
    		int row;
			
				row = st.executeUpdate(sql);
			
    		z=1;
       
         
         
          
            if(z==row) 
            {
            	resp.sendRedirect("managermainpage.jsp");
            }
            else
            {
            	resp.sendRedirect("error.jsp");
            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		}
	}
