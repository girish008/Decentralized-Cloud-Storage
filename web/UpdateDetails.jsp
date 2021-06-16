<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBCon"%>
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
			<li class="first current_page_item"><a href="OwnerHome.jsp">Homepage</a></li>
			
			<li><a href="FileUpload.jsp">File Upload</a></li>
			<li><a href="ViewFiles.jsp">View Files </a></li>
                        <li><a href="ViewFileRequest.jsp">View File Request</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/cloud.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
        <%String t1=(String)session.getAttribute("t1");
        String id=request.getParameter("id");%>
        <h2><b><center>Welcome <%=t1%>!
	</center></b></h2>
	<p align="justify" style="margin-left:400px;"><font size="3" style="font-family: Comic Sans MS">
	Update File Details :</p>
        <center>
            <form action="UpdateAction.jsp" method="post">
            <table>
           <%
           try{
               
               Connection con=DBCon.getCon();
              Statement st=con.createStatement();
              ResultSet r=st.executeQuery("select * from files where id='"+id+"'");
              while(r.next()){
                %>
                <tr>
                    <th>File ID</th><td>:<input type="text" name="fid" value="<%=r.getString("id")%>" readonly></td></tr>
             
                    <th>FileName</th><td>:<input type="text" name="filename" value="<%=r.getString("filename")%>"></td></tr>
             
                    <th>FileSize</th><td>:<input type="text" name="filesize" value="<%=r.getString("size")%>"></td></tr>
             <th>Upload Date</th><td>:<input type="date" name="date" value="<%=r.getString("CDate")%>"></td></tr>
             
                    <tr><th>Keyword</th><td>:<input type="text" name="keyword" value="<%=r.getString("keyword")%>"></td></tr>
                    <tr><th></th><td><input type="submit" value="update"/></td></tr>
                   
                    
            
                
                <%
              }
               
           }catch(Exception e){
               out.println(e);
           }
           
           
           
           %> 
        </table>
            </form>
        </center>
</p>
</body>
</html>
