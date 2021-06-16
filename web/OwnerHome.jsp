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
	<p align="justify" style="margin-left:250px;"><font size="3" style="font-family: Comic Sans MS">
	Securing Resources in Decentralized Cloud Storage:</p>
<p align="justify" style="margin: 50px;"><font size="3" style="font-family: Comic Sans MS">Decentralized cloud storage services represent a promising opportunity for a different cloud market, meeting the supply and demand for IT resources of an extensive community of users. The dynamic and independent nature of the resulting infrastructure introduces security concerns that can represent a slowing factor toward the realization of such an opportunity, otherwise clearly appealing and promising for the expected economic benefits. In this paper, we present an approach enabling resource owners to effectively protect and securely delete their resources while relying on decentralized cloud services for their storage. Our solution combines All-Or-Nothing-Transform for strong resource protection, and carefully designed strategies for slicing resources and for their decentralized allocation in the storage network. We address both availability and security guarantees, jointly considering them in our model and enabling resource owners to control their setting. </p>


</p>
</body>
</html>
