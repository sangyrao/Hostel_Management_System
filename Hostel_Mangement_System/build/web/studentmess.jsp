<%@page import="java.sql.*;"%>
<%
 Connection con;
Statement smt;
String email=request.getParameter("email"); 
//session.putValue("email",email); 
String date=request.getParameter("date");
String breakfast=request.getParameter("breakfast"); 
String lunch=request.getParameter("lunch"); 
String dinner=request.getParameter("dinner");

try{
Class.forName("com.mysql.jdbc.Driver"); 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
 smt = con.createStatement();
String rsemail=null;      
String rsdate=null;
String rsbreakfast=null;
String rslunch=null;
String rsdinner=null;

ResultSet rs=smt.executeQuery("select * from messmenu where email='"+email+"'  "); 
while(rs.next()) 
{ 
 rsemail=rs.getString("email");      
 rsdate=rs.getString("date");
 rsbreakfast=rs.getString("breakfast");
rslunch=rs.getString("lunch");
rsdinner=rs.getString("dinner");
}       if(email.equals(rsemail)){
    %>  <div class="profile">
      
       <h2 style="color:white;">Student details ,</h2>
       <center>
       <div class="d">
       <br/>
       <h3>Email :<% out.println("\t\t\t "+rsemail); %></h3>
       <h3>Breakfast :<% out.println("\t\t\t "+rsbreakfast); %></h3>
       <h3>Lunch :<% out.println("\t\t\t "+rslunch); %></h3>
       <h3>Dinner :<% out.println("\t\t\t "+rsdinner); %></h3>
       <h3>Date :<% out.println("\t\t\t "+rsdate); %></h3>
       </div>
       </center>
       </div>
       
      
        <div class="profile2">
         
                  <a class="di1" type="button" href="index.html">Logout</a>  
         
             <br/>
            <br/>
       
       <a class="dii" href="password.html">Change Password</a>
             
       </div>

      
       
       
       
       
       
         <style>
              .did{
       
        font-size:38px;
        padding:50px;
        
        
    }
     .di{
        width:200px;
        height:20px;
        margin-bottom: 25px;
        font-size:22px;
    }
             .bb{
        
        color:white;
           }
    .og{
        color:yellow !important;
    }
             body{
                 background-image:url("images/back1.jpg") !important;
                background-repeat:no-repeat;
               background-size:cover;
             }
             .dii{
                  font-size:23px;
                 color:white;
                 background-color:black;
                 margin-bottom:10px;
                 margin-left:1100px;
             }
             .d{
                 font-size:30px;
                 font-family: monotype corsiva;
                 color:white;
                 
                 
             }
             .di1{
                 font-size:23px;
                 color:white;
                 margin-top:50px;
                 background-color:black;
                 border-radius:30px;
                 margin-left:1200px;
             }
             .dip{
                 font-size:23px;
                 color:white;
                 margin-top:50px;
                 background-color:black;
                 border-radius:30px;
            
             }
             
         </style>
         
       
  <%   
      }
else{
%>

<h2>Please enter valid details.</h3>
<style>
    body{background-image:url("images/back1.jpg")};
    </style>
<%

    
} }

catch(Exception e){
    out.println(e);
}
%>


