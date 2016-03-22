<%@page import="com.test.TablaUsuariosLiferayPortlet"%>
<%@page import="java.util.Collection"%>
<%@page import="com.liferay.portal.model.User"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.test.TablaUsuariosLiferayPortlet"%>


<portlet:defineObjects />

<%
	List<User> users = (List<User>) request.getAttribute("listaUsuarios");
%>

<table >
	<thead >
		<tr>
		
			<th>ID</th>
			
			<th>NOMBRE</th>
			
			<th>EMAIL</th>

		</tr>

	</thead>

	<tbody>

<c:forEach items="<%=users %>" var="user">

		<tr>
	
			<td>${user.userId}</td>
			
			<td>${user.fullName}</td>
			
			<td>${user.emailAddress}</td>

		</tr>

</c:forEach>

	</tbody>

</table>