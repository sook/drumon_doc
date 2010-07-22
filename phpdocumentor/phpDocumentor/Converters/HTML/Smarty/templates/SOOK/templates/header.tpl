<html>
<head>
<title>{$title}</title>
<link rel="stylesheet" type="text/css" href="{$subdir}media/style.css">
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
<div id="conteiners">    
	<div id="topo">
		<div id="toptopo">
		   <span class="topostyle"> {$package} </span>
		</div>          
		<div id="subtopo">
		   	{assign var="packagehaselements" value=false}
	        {foreach from=$packageindex item=thispackage}
	            {if in_array($package, $thispackage)}
	                {assign var="packagehaselements" value=true}
	            {/if}
	        {/foreach}
	        {if $packagehaselements}
	  		  [ <a href="{$subdir}classtrees_{$package}.html" class="menu">class tree: {$package}</a> ]
			  [ <a href="{$subdir}elementindex_{$package}.html" class="menu">index: {$package}</a> ]
			{/if}
	  	    [ <a href="{$subdir}elementindex.html" class="menu">all elements</a> ]&nbsp; 
		</div> 
	</div>
	<div id="centro">
		<div id="left">

		    <!-- ######## FIM RIC ########## -->   
			{if count($ric) >= 1} 
			<div class="content_pacotes"> 
				<div id="ric">
					{section name=ric loop=$ric}
						<p><a href="{$subdir}{$ric[ric].file}">{$ric[ric].name}</a></p>
					{/section}
				</div>
			</div>
			{/if}
			<!-- ######## FIM DO RIC ########## -->

			<!-- ######## TODO LIST ########## -->   
			{if $hastodos} 
			<div class="content_pacotes"> 
				<div id="todolist">
						<p><a href="{$subdir}{$todolink}">Todo List</a></p>
				</div>  
			</div>
			{/if}    
			<!-- ######## FIM TODO LIST ########## -->    

			<div class="content_pacotes_top">
				<span class="title_pacote">Packages:</span>
			</div> 
			<div class="content_pacotes"> 
				<ul>
			{section name=packagelist loop=$packageindex}
		        <li><a href="{$subdir}{$packageindex[packagelist].link}">{$packageindex[packagelist].title}</a></li>
		    {/section} 
				</ul>
			</div>
			{if $tutorials}   

					<div class="content_pacotes_top">
						<span class="title_pacote">Tutorials/Manuals:</span>
					</div>      
					<div class="content_pacotes"> 
					{if $tutorials.pkg}
						<strong>Package-level:</strong>
						{section name=ext loop=$tutorials.pkg}
							{$tutorials.pkg[ext]}
						{/section}
					{/if}
					{if $tutorials.cls}
						<strong>Class-level:</strong>
						{section name=ext loop=$tutorials.cls}
							{$tutorials.cls[ext]}
						{/section}
					{/if}
					{if $tutorials.proc}
						<strong>Procedural-level:</strong>
						{section name=ext loop=$tutorials.proc}
							{$tutorials.proc[ext]}
						{/section}
					{/if}  
					</div>
			{/if} 
			{if !$noleftindex}{assign var="noleftindex" value=false}{/if}
			{if !$noleftindex}
				{if $compiledfileindex}
					<div class="content_pacotes_top">      
						<span class="title_pacote">Files:</span>
					</div> 
					<div class="content_pacotes">
						{eval var=$compiledfileindex}
					</div>
		    	{/if}

				{if $compiledinterfaceindex}
					<div class="content_pacotes_top">       
						<span class="title_pacote">Interfaces:</span>   
					</div> 
					<div class="content_pacotes">
						{eval var=$compiledinterfaceindex} 
					</div>
				{/if}

				{if $compiledclassindex}   
					<div class="content_pacotes_top"> 
					      <span class="title_pacote">Classes:</span>  
					</div>  
					<div class="content_pacotes">
					      {eval var=$compiledclassindex}
					</div>
				{/if}
			{/if}  
		</div>
		<div id="right"> 
		   
		</div>         
		<div id="center">
  			{if $hasel}
			<h1>{$eltype|capitalize}: {$class_name}</h1>
			Source Location: {$source_location}<br /><br />
			{/if}

<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    
  <td>
      <table cellpadding="10" cellspacing="0" width="100%" border="0"><tr><td valign="top">
			{if !$hasel}{assign var="hasel" value=false}{/if}
			