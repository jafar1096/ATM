<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<style>
form {
 border: 20px solid #f1f1f1;   
margin: 0 auto;
    width: 400px;
}
h2{
    text-align: center;
}
body { 
background-image:img1.jpg; 
background-size: cover; 
background-attachment: fixed;
}

input[type=text], input[type=password]{
    width: 100%;
    padding: 10px 10px;
    
    display: inline-block;
    border: 10px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;}
.cancellbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #0000FF;}
.cancelllbtn {
    width: auto;
    padding: 10px 18px;
    background-color:#00FF00 ;}







</style>
<body>

<h2>BALANCE CHECKING</h2>

<form action="screen9.jsp">
<body background="img1.jpg">
   
  

  <div class="container">
    <label><b>ENTER PIN</b></label>
    <input type="text" placeholder="Enter pin" name="uname" required>
    
    

   

        
    

   

<div class="container" style="background-color:#f1f1f1">
        
<input type="submit" class="cancellbtn" />
  
  </div>

   
  
</form>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
 String a=request.getParameter("uname"); 

 try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm", "root", "guruji");
           Statement st=con.createStatement();
int i=st.executeUpdate("insert into balance(id)values ('"+a+"')"); 
 
 }
 catch(Exception e){
        System.out.print(e);
 }
	
            

      //link to html       
     %>
    

</body>
</html>

