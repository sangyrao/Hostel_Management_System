
<%@page import="java.sql.*;" %>
<%
Connection con;
Statement smt;
String name = request.getParameter("name");
String address = request.getParameter("address");
String usertype=request.getParameter("usertype");
String email = request.getParameter("email");
String password = request.getParameter("password");
String mobile = request.getParameter("mobile");
try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
    smt = con.createStatement();
    if(name.length()>0 && address.length()>0 && email.length()>0 && password.length()>0 && mobile.length()>=10){
    smt.executeUpdate("insert into registration(name,address,usertype,email,password,mobile) values('"+name+"','"+address+"','"+usertype+"','"+email+"','"+password+"','"+mobile+"')");
    
        %>
        <script lang="javascript">
            alert("You are Successfully registered");
            </script>
            <html>
                <h3 style="color:black;">Thanks for registering.</h3>
                <br/><br/>
                <a class="d" href="index.html">Back to Home</a>
                
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
            alert("Data is not saved succesfully");
            </script>
            <html>
                <h3 style="color:black;">Sorry, Try registering again with valid details.</h3>
                <br/><br/>
                <a class="d" href="joinus.html">Try Again</a>
                
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