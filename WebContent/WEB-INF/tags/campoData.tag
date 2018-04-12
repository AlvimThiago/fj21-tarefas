<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="id" required="true" %>

<input type="text" id="${id}" name="${id}" value="${tarefa.dataFinalizacao.time}" />

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
