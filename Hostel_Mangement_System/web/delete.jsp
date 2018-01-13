<%@page import="java.sql.*;" %>
<%
Connection con;
Statement smt;

String email = request.getParameter("email");

try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
    smt = con.createStatement();
    int i = smt.executeUpdate("delete  from registration where email='"+email+"' ");
    if(i>0){
        %>
        <script lang="javascript">
            alert("Data is Deleted succesfully");
            </script>
            <%
                }
else{
%>
<script lang="javascript">
            alert("Data couldn't be deleted.");
            </script>
            <% 
}
    
}

catch(Exception e){
    out.println(e);
}




%>
