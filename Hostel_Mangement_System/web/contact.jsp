<%@page import="java.sql.*;"%>
<%
    Connection con;
    Statement smt;
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
    try{
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
         smt = con.createStatement();
         
         if(name.length() > 0 && email.length()>0 && subject.length()>0 && message.length()>0){  
         smt.executeUpdate("insert into contact1(name,email,subject,message) values('"+name+"','"+email+"','"+subject+"','"+message+"')");
            
%>
         
            <script lang="javascript">
            alert("Data is saved succesfully");
            </script>
            <html>
                <h3 style="color:black;">Your queries has been sent successfully.we will reply to you as soon as possible.</h3>
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
           
                 <%   }
                    else{
%>
<script lang="javascript">
            alert("Data is not saved succesfully");
            </script>
            <html>
                <h3 style="color:black;">Sorry,your message was not sent successfully.Please Enter valid data and Try again.</h3>
                <br/><br/>
                <a class="d" href="contact.html">Try Again</a>
                <br/><br/>
                <a class="d" href="index.html">Back to Home.</a>
                
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