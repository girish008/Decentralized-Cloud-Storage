package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AddEmp extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String user=request.getParameter("t1").trim();
	String pass=request.getParameter("t2").trim();
	String contact=request.getParameter("t3").trim();
	String email=request.getParameter("t4").trim();
	String address=request.getParameter("t5").trim();
	String type=request.getParameter("t6").trim();
	
	try{
		String msg = DBCon.register(user,pass,contact,email,address,type);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("AddEmp.jsp?t1=New Employee Details Added");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd=request.getRequestDispatcher("AddEmp.jsp?t1="+msg);
			rd.forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
}

}
