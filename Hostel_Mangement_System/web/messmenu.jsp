<%@page import="java.sql.*;" %>
<%
Connection con;
Statement smt;
String email = request.getParameter("email");

String breakfast = request.getParameter("breakfast");
String lunch = request.getParameter("lunch");
String dinner = request.getParameter("dinner");
String  date = request.getParameter("date");
try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
    smt = con.createStatement();
    String rsemail=null;      

ResultSet rs=smt.executeQuery("select * from messmenu where email='"+email+"'" ); 
while(rs.next()) 
{ 
 rsemail=rs.getString("email");      

}
    int i = smt.executeUpdate("insert into messmenu(email,breakfast,lunch,dinner,date) values('"+email+"','"+breakfast+"','"+lunch+"','"+dinner+"','"+date+"')");
    if(i>0 && email.equals(rsemail) ){
        %>
        <script lang="javascript">
           alert("Your order was sent succesfully");
           
            </script>
            <html>
                <h2>
                    <a class="d" href="index.html">Back to Home</a></h2>
                
            </html>
            <style>
                .d{
        font-size:24px;
        font-weight:bold;
        color:yellow;
        
    }
    body{
        background-image:url("images/back1.jpg");
    }
            </style>
            <%
                }
else{
%>
<script lang="javascript">
            alert("Please check your username and retry.");
            </script>
            <html>
                <h2>
                    <a class="d" href="index.html">Back to Home</a></h2>
                
            </html>
            <style>
                .d{
        font-size:24px;
        font-weight:bold;
        color:yellow;
        
    }
    body{
        background-image:url("images/back1.jpg");
    }
            </style>
            <% 
}
    
}

catch(Exception e){
    out.println(e);
}




%>
