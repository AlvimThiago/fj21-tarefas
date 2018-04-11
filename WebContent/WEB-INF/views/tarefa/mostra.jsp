<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="finalDate" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- CSS jQuery UI -->
 <link href="css/jquery.css" rel="stylesheet">
 <script src="js/jquery.js"></script>
 <script src="js/jquery-ui.js"></script>
<%--  <link rel="stylesheet" type="text/css" href="<c:url value="/css/jquery.css" />" /> --%>
<%-- <script type="text/javascript" src="<c:url value="/js/jquery.js" />"></script> --%>
<%-- <script type="text/javascript" src="<c:url value="js/jquery.js" />"></script> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição:<br />
		<textarea name="descricao" rows="5" cols="100"><%-- --%>${tarefa.descricao}<%-- --%></textarea>
		<br />
		Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' }/><br />
		
		Data de finalização: <br />
		<finalDate:campoData id="dataFinalizacao" />
<%-- 		<input type="text" name="dataFinalizacao" value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />"/> --%>
		<br />
		
		<input type="submit" value="Alterar"/>
		
	</form>

</body>
</html>