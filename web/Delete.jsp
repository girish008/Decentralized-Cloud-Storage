

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
    
   String id=request.getParameter("id"); 
   
   Connection con=DBCon.getCon();
   Statement st=con.createStatement();
   int i=st.executeUpdate("delete from files where id='"+id+"'");
   if(i>0){
     %>
     <script type="text/javascript">
         window.alert("File Deleted Successfully");
         window.location="ViewFiles.jsp";
     </script>
     <%
              
              
   }else{
%>
     <script type="text/javascript">
         window.alert("Failed To Delete the File");
         window.location="ViewFiles.jsp";
     </script>
     <%
}
    
}catch(Exception e){
  out.println(e);  
}


%>
