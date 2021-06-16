

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String fname=request.getParameter("fname");
String t1=request.getParameter("owner");
if(fname!=null){
  response.sendRedirect("download?"+fname+","+t1);  
}else{
  response.sendRedirect("RequestStatus.jsp?msg=failed");   
}
%>
