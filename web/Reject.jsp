


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try{
    
   String fid=request.getParameter("fid"); 
      String id=request.getParameter("id"); 
      
   Connection con=DBCon.getCon();
   Statement st=con.createStatement();
   int i=st.executeUpdate("update request set status='Rejected' where fid='"+fid+"' and id='"+id+"'");
   if(i>0){
     %>
     <script type="text/javascript">
         window.alert("File Rejected Successfully");
         window.location="ViewFileRequest.jsp";
     </script>
     <%
              
              
   }else{
%>
     <script type="text/javascript">
         window.alert("Failed To Rejected the File");
         window.location="ViewFileRequest.jsp";
     </script>
     <%
}
    
}catch(Exception e){
  out.println(e);  
}


%>
