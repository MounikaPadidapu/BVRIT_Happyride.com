<%@page import = "com.bvrit.happyride.dao.UserDAO"%>
<%@page import = "com.bvrit.happyride.beans.UserBeans"%>
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
<th>username</th>
<th>contactnumber</th>
<th>email</th>
<th>startingpoint</th>
<th>destinationpoint</th>
<th>journeydate</th>
<th>fare</th>
<th>no.of seats offered</th>

</tr>
<% 
while(itr.hasNext())
{
 UserBeans c = (UserBeans)itr.next();
%>
<tr>

<td><%=c.usename%></td>

<td><%=c.contactnumber%></td>

<td><%=c.email%></td>
<td><%=c.startingpoint%></td>

<td><%=c.destinationpoint%></td>

<td><%=c.journeydate%></td>
<td><%=c.fare%></td>

<td><%=c.seatsavailable%></td>


</form></td>
</tr>

<%

}

%>
</table><br>
