<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ attribute name="id" required="true" %>
<%@ attribute name="data" type="java.util.Calendar" %>

<input type="text" id="${id}" name="${id}" value="<fmt:formatDate value="${data.time}" pattern="dd/MM/yyyy" />" />

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
