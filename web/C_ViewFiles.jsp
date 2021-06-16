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
        <h2><b><center>
	</center></b></h2>
	<p align="justify" style="margin-left:400px;"><font size="3" style="font-family: Comic Sans MS">
	All Uploaded Files :</p>
        <center>
        <table style="margin-bottom: 100px;">
            <tr><th>FileName</th>
            <th>Upload Date</th>
            <th>File Size</th>
            <th>Keyword</th>
            </tr>
           <%
           try{
               
               Connection con=DBCon.getCon();
              Statement st=con.createStatement();
              ResultSet r=st.executeQuery("select * from files");
              while(r.next()){
                %>
                <tr>
                    <td><%=r.getString("filename")%></td>
                    <td><%=r.getString("CDate")%></td>
                    <td><%=r.getString("size")%> bytes</td>
                    <td><%=r.getString("keyword")%></td>
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
