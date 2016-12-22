<h2>Este � o conte�do requisitado para demonstrar o m�todo <code>ajaxStart( )</code></h2>
<p>O evento associado ocorre quando se inicia uma requisi�ao AJAX e nenhuma outra atividade est� em curso na p�gina, como por exemplo: outra requisi��o em andamento.</p>
<p>Este m�todo (em terminologia jQuery vamos chamar de m�todos)  admite um argumento facultativo que � uma fun��o callback a ser executada por ocasi�o da ocorr�ncia do evento.</p>
<p>Exemplo:</p>

<li>&nbsp;$('#carregando').ajaxStart(function() {</li>
<li>&nbsp;&nbsp;&nbsp;$(this).show('slow');</li>
<li>&nbsp;});</li>
