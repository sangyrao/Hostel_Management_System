<%@page import="java.sql.*;"%>
<%
 Connection con;
Statement smt;
String email=request.getParameter("email"); 
//session.putValue("email",email); 
String usertype=request.getParameter("usertype");
String password=request.getParameter("password"); 
String name=request.getParameter("name"); 
String address=request.getParameter("address");
String mobile=request.getParameter("mobile");

try{
Class.forName("com.mysql.jdbc.Driver"); 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact","root","sangy");
 smt = con.createStatement();
String rsuser=null;      
String rspswd=null;
String rsname=null;
String rsusertype=null;
String rsmobile=null;
String rsaddress=null;
ResultSet rs=smt.executeQuery("select * from registration where email='"+email+"' and password='"+password+"' and usertype='"+usertype+"' "); 
while(rs.next()) 
{ 
 rsuser=rs.getString("email");      
 rspswd=rs.getString("password");
 rsname=rs.getString("name");
 rsmobile=rs.getString("mobile");
rsusertype=rs.getString("usertype");
rsaddress=rs.getString("address");
}

if  ((email.equals(rsuser)) && (password.equals(rspswd)) && (usertype.equals(rsusertype)) )
{ 
  if(usertype.equals("student")){
     
       
       %> 
       <center>
       <h1 style ="color:white;"><%=new java.util.Date()%></h1>
       </center>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
         $(document).ready(function(){
             
             $(".profile1").click(function(){
                 
                 $(".profile").slideToggle("slow");
                 
             });
         });   
            
            
       </script>
       <script>
         $(document).ready(function(){
             
             $(".messmenu").click(function(){
                 
                 $(".messmenu1").slideToggle("slow");
                 
             });
         });   
            
            
       </script>
       <div class="profile1">
         <center>
             <h1 style="color:yellow; background-color: black;border-radius:90px;">Profile</h1>
         </center>
       </div>
       <div class="messmenu">
         <center>
             <h1 style="color:yellow; background-color: black;border-radius:90px;">Mess Menu</h1>
         </center>
       </div>
       
       <center>
       <div class="messmenu1">
     
            <h2 class="og">Enter Your Food Order.</h2>  
            <br/>
            <center>
            <a class="dip"  href="messmenu.html">View Mess Menu.</a> 
            </center>
            
            <br/>
            
      <form action="messmenu.jsp" method="post" >
            <table class="bb">
                 <tr><td class="di">Email:      <input type="text" name="email" placeholder="email"></td></tr>
                 
                 <tr><td class="di">Breakfast: <select name="breakfast">
                  
                  <option class="di" value="idly">    Idly</option>
                  <option  class="di" value="dosa">     Dosa</option>
                  <option class="di" value="chowmein">    Chowmein</option>
                  <option class="di"  value="cornflakes">   Corn flakes</option>
                  <option class="di" value="sandwich">    Sandwich</option>
                  <option class="di"  value="toast">   Toast</option>
                  <option class="di" value="Upma">    Upma</option>
                  <option  class="di" value="fruitsalad"> Fruit salad</option>
                </select></td></tr>
                 <tr><td class="di" >Lunch: <select name="lunch">
                  
                  <option class="di" value="fish">  Fish,rice</option>
                  <option class="di"  value="chicken">     Chicken curry,rice</option>
                  <option class="di" value="paneer">    Paneer,rice</option>
                  <option class="di"  value="mixveg">   Mix veg,rice</option>
                  <option class="di" value="Mushroom">  Mushroom,rice </option>
                  <option class="di" value="vegfriedrice"> Veg fried rice,raita</option>
                  <option class="di" value="manchurian">    Manchurian,rice</option>
                  <option class="di" value="Chicken Biryani"> Chicken Biryani,raita</option>
                </select></td></tr>
                 <tr><td class="di">Dinner: <select name="dinner">
                  
                  <option class="di" value="fish">  Fish,rice,roti</option>
                  <option class="di" value="chicken">     Chicken curry,rice,roti</option>
                  <option class="di" value="paneer">    Paneer,rice,roti</option>
                  <option class="di" value="mixveg">   Mix veg,rice,roti</option>
                  <option class="di" value="Mushroom">  Mushroom ,rice,roti </option>
                  <option class="di" value="vegfriedrice"> Veg fried rice,raita</option>
                  <option class="di" value="manchurian">    Manchurian,rice,roti</option>
                  <option class="di" value="Chicken Biryani"> Chicken Biryani,raita</option>
                </select></td></tr>
                      <tr><td class="di">date:      <input type="text" name="date" placeholder="dd-mm-yyyy"></td></tr>
               
                
                <tr><td> <input type="submit" value="Submit"></td></tr>
            </table>
        </form>
           </div>
          
       </center>
        
       
        
       
  
       <div class="profile">
      
       <h2 style="color:white;">Welcome User ,</h2>
       <center>
       <div class="d">
       <br/>
       <h3>Name :<% out.println("\t\t\t "+rsname); %></h3>
       <h3>Email :<% out.println("\t\t\t "+rsuser); %></h3>
       <h3>Address :<% out.println("\t\t\t "+rsaddress); %></h3>
       <h3>Mobile No. :<% out.println("\t\t\t "+rsmobile); %></h3>
       <h3>User Type :<% out.println("\t\t\t "+rsusertype); %></h3>
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
     .did{
       
        font-size:28px;
        padding:50px;
        
        
    }
     .di{
        width:200px;
        height:20px;
        margin-bottom: 30px;
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
             .profile{display:none};
             
             .messmenu1{display:none};
         </style>
         
         
  <%      
    }
else {
%>
<h1>admin page</h1>

<%
    response.sendRedirect("weladmin.html");
}
} 
else 
{


%>
<script lang="javascript">
alert("please check your username and password.");    
</script>
<html>      
           
            <a class="d" href="index.html">Back to home.</a>
</html>
            <style>
                body{background-image: url("images/back1.jpg");}
                    .d{
          font-size:24px;
          font-weight:bold;
          color:yellow;
        
    }
            </style>
<%
 

} 



}
catch(Exception e){
    out.println(e);
}
%>


