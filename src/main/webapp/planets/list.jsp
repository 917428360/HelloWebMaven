<%@page import="com.ipartek.formacion.pojo.Planeta"%>


<%@ include file="../includes/head.jsp" %>


<h1>Listado Planetas</h1>

<%
	if (request.getAttribute("msg")!=null){
		out.print("<hr>");
		out.print(request.getAttribute("msg"));
		out.print("<hr>");
	}
%>

<form action="<%=Constantes.CONTROLLER_PLANETS%>" method="post">
	<input type="search" name="s" required placeholder="Busca tu planeta en el universo">
	<input type="hidden" name="op" value="<%=Constantes.OP_SEARCH%>">
	<input type="submit" value="Buscar">
</form>

<table class="tabla">
	<thead>
		<tr>
			<th>Imagen</th>
			<th>Nombre</th>
			<th>Ver</th>
			<th>Eliminar</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="p" items="${requestScope.list}">
			<tr>
				<td><img src="${p.img}" alt="${p.nombre}"/></td>
				<td>${p.nombre}</td>
				<td><a href="<%=Constantes.CONTROLLER_PLANETS%>?op=<%=Constantes.OP_DETAIL%>&id=${p.id}"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
				<td><a href="<%=Constantes.CONTROLLER_PLANETS%>?op=<%=Constantes.OP_DELETE%>&id=${p.id}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<%@ include file="../includes/footer.jsp" %>