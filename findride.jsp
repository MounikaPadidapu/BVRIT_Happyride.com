
<%@page import="com.bvrit.happyride.beans.UserBeans"%>
<%@page import="com.bvrit.happyride.dao.UserDAO"%> 
<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "javax.servlet.http.HttpSession" %>
<%

 UserDAO cdao = new UserDAO();
 ArrayList<UserBeans> alc = cdao.getAlldetails();
 Iterator<UserBeans> itr = alc.iterator();
 %>
 
 
<hr size = 4 color ="blue">
<table border="2" bordercolor="#2494b7">

<tr>
   <th>firstname</th>
   <th>email</th>
   <th>username</th>
   <th>carmodel</th>
   <th>carcolor</th>
   <th>startingpoint</th>
   <th>destinationpoint</th>
  
</tr>
<% 

while(itr.hasNext())
{
 UserBeans c = (UserBeans)itr.next();
 %>

<tr>

	<td><%=c.firstname%></td>

	<td><%=c.email%></td>

	<td><%=c.username%></td>
	<td><%=c.carmodel%></td>

	<td><%=c.carcolor%></td>

	<td><%=c.startingpoint%></td>
	<td><%=c.destinationpoint%></td>



</tr>

<%
}
%>






</table>

