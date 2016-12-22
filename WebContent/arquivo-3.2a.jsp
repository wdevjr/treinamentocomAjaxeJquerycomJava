<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Livro do Maujor | AJAX com jQuery</title>
<meta http-equiv="content-language" content="pt-br" />
<link href="estilos.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	$('#carrega').click(function(e) {
	e.preventDefault();
	$('#insere_aqui').ajaxStart(function() {
	var iconCarregando = $('<img src="icon/mini.gif" class="icon" /> <span class="destaque">Carregando. Por favor aguarde...</span>');
	$(this).html(iconCarregando);
	});
	$.get('exemplo-ajaxstart.jsp', 
	function(data) {
		var espera = function() { $('#insere_aqui').html(data) };
		setTimeout(espera, 3000);
	},
	'html');
});	
})
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<div id="tudo">
<div id="conteudo">
<h1>Exemplo de requisição com uso do método ajaxStart( )</h1>
<a href="exemplo-ajaxstart.jsp" id="carrega">Requisitar o arquivo exemplo-ajaxstart.html</a>

<div id="insere_aqui"></div>

<div id="nav">Arquivos exemplo do livro do Maujor | AJAX com jQuery: | <a href="NewFile.xhtml">próximo &raquo;</a></div>

</div>
</div>

</body>
</html>