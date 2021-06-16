<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Decentralized Cloud Storage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
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
			<li class="first current_page_item"><a href="index.jsp">Homepage</a></li>
			<li><a href="CSP.jsp">CSP</a></li>
			<li><a href="DataOwner.jsp">Data Owner</a></li>
			<li><a href="DataUser.jsp">Data User</a></li>
                        <li><a href="Register.jsp">Registration</a></li>
		</ul>				<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/cloud.jpg" width="870" height="230" alt="" />
	</div>	
			<center>
<form name="f1" method="post" action="CSPLogin" onsubmit="return validate(this);"><br/>
   <h2><b>Cloud Service Provider</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=30/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Login">
			</td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>