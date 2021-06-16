

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String t1=(String)session.getAttribute("t1");
String fid=request.getParameter("id");

try{

    
    Connection con=DBCon.getCon();
   Statement st=con.createStatement();
   int i=st.executeUpdate("insert into request values(null,'"+t1+"','"+fid+"','waiting')");
   if(i>0){
     %>
     <script type="text/javascript">
         window.alert("Request Sent Successfully");
         window.location="SearchFile.jsp";
     </script>
     <%
              
              
   }else{
%>
     <script type="text/javascript">
         window.alert("Failed To Send Request");
         window.location="SearchFile.jsp";
     </script>
     <%
} 
}catch(Exception e){
   out.println(e); 
}



%>
