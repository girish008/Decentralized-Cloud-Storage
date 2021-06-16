<%@page import="java.sql.*"%>
<%@page import="com.DBCon" %>
<%
	String t1=request.getParameter("t1");
	String t2=request.getParameter("t2");
        
	
	try
	{
	
	Connection con=DBCon.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where t1='"+t1+"' and t2='"+t2+"'  and t7='User'");
	while(rs.next())
	{
	
            String status=rs.getString(8);
            
            System.out.println(status);
            if(status.equals("Waiting"))
            {
                %>
                <script type="text/javascript">
                    
                    window.alert("You Are Not Yet Activated..!!!");
                    window.location="DataUser.jsp";
                    </script>
                <%
            
}
 if(status.equals("Activated"))
{
%>
                <script type="text/javascript">
                    
                    window.alert("Login Sucess....!!!");
                    window.location="UserHome.jsp";
                    </script>
                <%
                    session.setAttribute("t1",t1);
}
else 
if(status.equals("DeActivated"))
{
%>
                <script type="text/javascript">
                    
                    window.alert("Your Account Is InActive Contact Admin....!!!");
                    window.location="DataUser.jsp";
                    </script>
                <%
}

	else
	{
	%>
                <script type="text/javascript">
                    
                    window.alert("User Name Or Password Incorrect....!!!");
                    window.location="DataUser.jsp";
                    </script>
                <%
	}
%>
                <script type="text/javascript">
                    
                    window.alert("User Name Or Password Incorrect....!!!");
                    window.location="DataUser.jsp";
                    </script>
                <%
}
%>
                <script type="text/javascript">
                    
                    window.alert("User Name Or Password Incorrect....!!!");
                    window.location="DataUser.jsp";
                    </script>
                <%
}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>