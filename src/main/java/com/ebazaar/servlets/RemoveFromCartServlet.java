package com.ebazaar.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Servlet implementation class RemoveFromCartServlet
 */
@WebServlet("/RemoveFromCartServlet")
public class RemoveFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveFromCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      HttpSession session = request.getSession(false);
	        if (session != null) {
	            ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
	            if (cart != null && !cart.isEmpty()) {
	              
	                String[] itemsToRemove = request.getParameterValues("remove");

	               
	                System.out.println("Cart before removal: " + cart);
	                System.out.println("Selected to remove: " + Arrays.toString(itemsToRemove));

	                if (itemsToRemove != null) {
	                  
	                    for (String it : itemsToRemove) {
	                        boolean removed = cart.remove(it);
	                        System.out.println((removed ? " Removed: " : "⚠️ Not found: ") + it);
	                    }
	                   
	                    session.setAttribute("cart", cart);
	                } else {
	                    System.out.println("No items selected for removal.");
	                }
	            } else {
	                System.out.println("Cart is empty or null.");
	            }
	        } else {
	            System.out.println("Session is null.");
	        }

	       
	        response.sendRedirect("cart.jsp");
	    

	   
	}

}
