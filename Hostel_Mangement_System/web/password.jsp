<%@page import="java.sql.*;"%>
<%
 Connection con;
Statement smt;
String preps=request.getParameter("preps");    
String email=request.getParameter("email");
String newps=request.getParameter("newps"); 
String cnfps=request.getParameter("cnfps");
String password=request.getParameter("password"); 
try{
Class.forName("com.mysql.jdbc.Driver"); 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
 smt = con.createStatement();
 String rsps=null;

int i =smt.executeUpdate("UPDATE registration SET  password='"+newps+"' where password='"+preps+"' and email='"+email+"'" ); 
 
       if(i>0){
        %>
        <script lang="javascript">
            alert("Password changed succesfully");
            </script>
            <html>
                        <a class="d" href="index.html">Please Login Again.</a>
            </html>
            <style>
                body{background-image:url("images/back1.jpg");}
                 .d{
        font-size:24px;
        font-weight:bold;
        color:yellow;
        
    }
            </style>
            <%
                }
else{
%>
<script lang="javascript">
            alert("Please try again.");
            </script>
            <% 
}
    
}

catch(Exception e){
    out.println(e);
}




%>
