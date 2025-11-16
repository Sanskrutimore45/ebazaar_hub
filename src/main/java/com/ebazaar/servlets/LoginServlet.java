package com.ebazaar.servlets;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Dummy credentials check
        if ("admin".equals(username) && "1234".equals(password)) {

            // Session Management
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Visitor count stored in Application Context
            ServletContext context = getServletContext();
            Integer count = (Integer) context.getAttribute("visitorCount");
            if (count == null) {
                count = 0;
            }
            count++;
            context.setAttribute("visitorCount", count);

            // Redirect to home page
            response.sendRedirect("index.jsp");

        } else {
            response.sendRedirect("login.jsp?error=1");
        }
		
		
		
		
		
		
		
		
		
		
		
		
//		ServletRequest req = null;
//		// TODO Auto-generated method stub
//	    String username = req.getParameter("username");
//        String password = req.getParameter("password");
//
//        HttpServletResponse res = null;
//		if ("admin".equals(username) && "123".equals(password)) {
//            HttpSession session = ((HttpServletRequest) req).getSession(true);
//            session.setAttribute("username", username);
//            session.setAttribute("cart", new java.util.ArrayList<String>());
//
//            ServletContext context = getServletContext();
//            Integer count = (Integer) context.getAttribute("visitorCount");
//            if (count == null) count = 0;
//            count++;
//            context.setAttribute("visitorCount", count);
//
//            res.sendRedirect("index.jsp");
//        } else {
//            res.getWriter().println("<h3>Invalid credentials!</h3><a href='login.jsp'>Try again</a>");
//        }
		
		
		
		
//		  String username = request.getParameter("username");
//	        String password = request.getParameter("password");
//
//	        if ("admin".equals(username) && "1234".equals(password)) {
//	            response.sendRedirect("welcome.jsp");
//	        } else {
//	            response.sendRedirect("login.jsp?error=1");
//	        }
		
		
		
		
		
		
		
		
	}

}
