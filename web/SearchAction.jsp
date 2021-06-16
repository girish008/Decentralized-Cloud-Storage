<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Decentralized Cloud Storage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="tablestyle.css" />
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
			<li class="first current_page_item"><a href="UserHome.jsp">Homepage</a></li>
			
			<li><a href="ViewProfile.jsp">View Profile</a></li>
			<li><a href="SearchFile.jsp">Search File</a></li>
                        <li><a href="RequestStatus.jsp"> Request Status</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/cloud.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
        <%String t1=(String)session.getAttribute("t1");
        String keyword=request.getParameter("keyword");
        %>
        <h2><b><center>Welcome <%=t1%>!
	</center></b></h2>
        <center>
            
 <table style="margin-bottom: 100px;">
            <tr><th>File Owner</th>
                <th>FileName</th>
            <th>Keyword</th>
            <th>File Size</th>
            <th>Status</th>
            
            </tr>
           <%
           try{
               
               Connection con=DBCon.getCon();
              Statement st=con.createStatement();
              ResultSet r=st.executeQuery("select * from files where keyword='"+keyword+"' or filename='"+keyword+"'");
              while(r.next()){
                %>
                <tr>
                    <td><%=r.getString("owner")%></td>
                    <td><%=r.getString("filename")%></td>
                    <td><%=r.getString("keyword")%></td>
                    <td><%=r.getString("size")%> bytes</td>
                    <td><a href="SendRequest.jsp?id=<%=r.getString("id")%>">Send Request</a></td>
                    
                </tr>  
                
                <%
              }
               
           }catch(Exception e){
               out.println(e);
           }
           
           
           
           %> 
        </table>	
        </center>
</p>
</body>
</html>
