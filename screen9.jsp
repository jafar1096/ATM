<%-- 
    Document   : screen11
    Created on : Nov 22, 2016, 11:01:06 PM
    Author     : elcot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

  
<%@ page language="java" import="java.sql.*"%> 

<HTML>
    <style>

h2{
    text-align: center;
}
body { 
background-image:img.jpg; 
background-size: cover; 
background-attachment: fixed;
}
table, th, td {
    border: 4px solid black;
}
th {
    background-color: #4CAF50;
    color: white;
}














</style>




<body background="img.jpg">
   <h2>BALANCE</h2>
      
            <% 
               String a=request.getParameter("uname");
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/atm", "root", "guruji");
                
                Statement statement = connection.createStatement() ;
                
               ResultSet resultset = 
                statement.executeQuery("select * from information where id = '" + a + "' " ) ; 
               %>
            
                <TABLE BORDER="1">
                    <table align="center">
           <TR>
                 <TH>id</TH>
                 <TH>account_holder_name</TH>
                 <TH>balance</TH>
                 
                 </Tr>
                     <% while(resultset.next()){ %>
            <TR>
           
                <TD> <%= resultset.getString(1) %></td>
               <TD> <%= resultset.getString(2) %></TD>
               <TD> <%= resultset.getString(3) %></TD>
               
           </Tr>
                      <% } %>
           
			
         

          
            
               </TABLE>
         </BODY>
</HTML>
