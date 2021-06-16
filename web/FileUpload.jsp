<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Decentralized Cloud Storage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
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
        <%String t1=(String)session.getAttribute("t1");%>
        <h2><b><center>Welcome <%=t1%>!
	</center></b></h2>
	<p align="justify" style="margin-left:400px;"><font size="3" style="font-family: Comic Sans MS">
	Upload File Into Cloud:</p>
 <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                            <label style="font-size: 23px;margin-left:250px;">File Name</label><input class="textbox" type="text" placeholder="Enter your File Name" name="fname" style="margin-left: 83px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px;margin-left:250px;">File Keyword </label><input class="textbox" type="text" placeholder="Enter your Keyword" name="fkey" style="margin-left: 45px;width: 250px" required=""/><br /><br />
                            <label style="font-size: 23px;margin-left:250px;">File Browse</label><input  type="file"  name="file" size="50" style="margin-left: 60px;width: 250px" required=""/><br /><br /><br />
                            <lable style="margin-left:250px;"><input type="submit" value="Submit" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" /></label>
                            <input type="reset" value="Reset" class="button" style="margin-left: 35px;margin-top: -10px;width: 100px;"/>
                        </form> 

</p>
</body>
</html>
