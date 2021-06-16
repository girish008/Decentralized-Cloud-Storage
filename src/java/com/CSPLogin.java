package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CSPLogin extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String user=request.getParameter("t1").trim();
	String pass=request.getParameter("t2").trim();
	try{
		if(user.equals("cloud") && pass.equals("cloud")){
			HttpSession session=request.getSession();
			session.setAttribute("user",user);
			response.sendRedirect("CloudScreen.jsp?t1=Welcome "+user);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("CSP.jsp?t1=invalid username or password");
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
