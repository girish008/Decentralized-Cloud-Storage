
<%@page import="com.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String fid=request.getParameter("fid");
String filename=request.getParameter("filename");
String filesize=request.getParameter("filesize");
String date=request.getParameter("date");
String keyword=request.getParameter("keyword");


try{
   
   Connection con=DBCon.getCon();
   Statement st=con.createStatement();
   int i=st.executeUpdate("update files set filename='"+filename+"',size='"+filesize+"',CDate='"+date+"',keyword='"+keyword+"' where id='"+fid+"'");
     if(i>0){
     %>
     <script type="text/javascript">
         window.alert("File Updates Successfully");
         window.location="ViewFiles.jsp";
     </script>
     <%
              
              
   }else{
%>
     <script type="text/javascript">
         window.alert("Failed To Update the File");
         window.location="ViewFiles.jsp";
     </script>
     <%
}
}catch(Exception e){
   out.println(e); 
}
%>