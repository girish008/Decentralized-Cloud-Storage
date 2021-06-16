<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Decentralized Cloud Storage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
    table
    {
        margin-left:0px;
    }
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="" color="white">Decentralized Cloud Storage</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="CloudScreen.jsp">Homepage</a></li>
			
			<li><a href="ViewDataOwners.jsp">View Data Owners</a></li>
			<li><a href="ViewDataUsers.jsp">View Data Users</a></li>
                        <li><a href="C_ViewFiles.jsp">View Files</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/cloud.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
        
	<p align="justify" style="margin-left:400px;"><font size="3" style="font-family: Comic Sans MS">
	View Data Owners Screens:</p>
<table  border='2px' style="margin-bottom:200px;" >
                                                    <tr>
                                                        <th>Username</th>
                                                        <th>Mobile Number</th>
                                                        <th>Email ID</th>
                                                        <th>Address</th>
                                                        <th>Gender</th>
                                                        <th>Status</th>
                                                        <th>Activate</th>
                                                    </tr>
                                                    <%@page import="com.DBCon"%>
                                                    <%@page import="java.sql.*" %>
                                                    <%
                                                        try
                                                        {
                                                            Connection con=DBCon.getCon();
                                                            Statement st=con.createStatement();
                                                            ResultSet rs=st.executeQuery("select *from user where t7='User'");
                                                           while(rs.next())
                                                           {
                                                                    %>
                                                                    <tr>
                                                                        <td><%=rs.getString(1)%></td>
                                                                        <td><%=rs.getString(3)%></td>
                                                                        <td><%=rs.getString(4)%></td>
                                                                        <td><%=rs.getString(5)%></td>
                                                                        <td><%=rs.getString(6)%></td>
                                                                        <td><%=rs.getString(8)%></td>
                                                                        <td><a href="Uactivate.jsp?t1=<%=rs.getString(1)%>">Activate</td>
                                                                    </tr>
                                                                    <%
                                                        }
}
catch(Exception e)
{
out.println(e);
}
                                                        %>
			</table>
</p>
</body>
</html>
