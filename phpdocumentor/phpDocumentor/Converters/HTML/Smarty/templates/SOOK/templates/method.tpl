{section name=methods loop=$methods}
	{if $methods[methods].static}
		<div class="cont_method_static">
			{if $show == 'summary'} 
			static method {$methods[methods].function_call}, {$methods[methods].sdesc}
			{else}
				<a name="{$methods[methods].method_dest}"></a>
				<h3>
					<span class="title_method">Static Method: {$methods[methods].function_name} </span>
					<span class="smalllinenumber">[line {if $methods[methods].slink}{$methods[methods].slink}{else}{$methods[methods].line_number}{/if}]</span>
				</h3>
				<div class="function">
					<!-- {include file="docblock.tpl" sdesc=$methods[methods].sdesc desc=$methods[methods].desc tags=$methods[methods].tags} -->
					{if $sdesc != ''}{$sdesc|default:''}<br />{/if}
					{if $desc != ''}{$desc|default:''}<br />{/if}
					{if $methods[methods].descmethod}
					<p>Overridden in child classes as:<br />
						{section name=dm loop=$methods[methods].descmethod}
						<dl>
							<dt>{$methods[methods].descmethod[dm].link}</dt>
							<dd>{$methods[methods].descmethod[dm].sdesc}</dd>
						</dl>
						{/section}</p>
						{/if}
						{if $methods[methods].method_implements}
						<hr class="separator" />
						<div class="notes">Implementation of:</div>
						{section name=imp loop=$methods[methods].method_implements}
						<dl>
							<dt>{$methods[methods].method_implements[imp].link}</dt>
							{if $methods[methods].method_implements[imp].sdesc}
							<dd>{$methods[methods].method_implements[imp].sdesc}</dd>
							{/if}
						</dl>
						{/section}
						{/if}
						<div class="titl_ct">
						
							<h3>Sintax:</h3>
							
						</div>
						<div class="code"> 
							
							 <code>static {if $methods[methods].ifunction_call.returnsref}&amp;{/if}{$methods[methods].function_name}(
							{if count($methods[methods].ifunction_call.params)}
							{section name=params loop=$methods[methods].ifunction_call.params}
							{if $smarty.section.params.iteration != 1}, {/if}
							{if $methods[methods].ifunction_call.params[params].hasdefault}[{/if}{$methods[methods].ifunction_call.params[params].type}
							{$methods[methods].ifunction_call.params[params].name}{if $methods[methods].ifunction_call.params[params].hasdefault} = {$methods[methods].ifunction_call.params[params].default}]{/if}
							{/section}
							{/if})</code>
						</div>
						{* original    {if $methods[methods].descmethod != ""
						{$methods[methods].descmethod
							{/if *}
							{if $methods[methods].method_overrides}Overrides {$methods[methods].method_overrides.link} ({$methods[methods].method_overrides.sdesc|default:"parent method not documented"})<br /><br />{/if}
							{* original    {if $methods[methods].method_overrides != ""
    						{$methods[methods].method_overrides
    						{/if *}
							{if count($methods[methods].params) > 0}
							<div class="content_tags_sep">
							<h3>Parameters:</h3>
							<div class="data_tg"> 
							<table border="0" cellspacing="0" cellpadding="0">
							{section name=params loop=$methods[methods].params}
							  <tr>
								<td><b>{$methods[methods].params[params].var}</b>&nbsp;&nbsp;</td>    
								<td class="type">{$methods[methods].params[params].datatype}&nbsp;&nbsp; </td>
							    <td>- &nbsp;{$methods[methods].params[params].data}</td>
							  </tr>
							{/section}
							</table>      
							</div>
    						</div>
    					    {/if}
							
							<div class="content_tags_sep">
								{section name=tag loop=$methods[methods].tags}     
									{if ( $methods[methods].tags[tag].keyword == 'return')}
										{$methods[methods].function_return}          
									{else}
										<h3>{$methods[methods].tags[tag].keyword|capitalize}:</h3>
										
										<div class="data_tg">{$methods[methods].tags[tag].data}</div> 
									{/if}               
								{/section}
							</div>
							<div class="content_tags_sep">
								<h3>Return:</h3> 
								<div class="data_tg">{$methods[methods].function_return}</div>
							</div>
							<hr/>	
							<div class="top">[ <a href="#top">Top</a> ]</div>
							
						</div>
				{/if}
		  </div>
	{/if}
{/section}  
					
					
					
					
					
		  <!-- Não Státicos -->
		  {section name=methods loop=$methods}
		  {if !$methods[methods].static}
		  {if $show == 'summary'}
		  method {$methods[methods].function_call}, {$methods[methods].sdesc}
		  {else}
	   <div class="cont_method_static">
		  <a name="{$methods[methods].method_dest}"></a>
		    <h3>
			<span class="title_method">{if $methods[methods].ifunction_call.constructor}constructor {elseif $methods[methods].ifunction_call.destructor}destructor {else}method {/if}{$methods[methods].function_name} </span><span class="smalllinenumber">[line {if $methods[methods].slink}{$methods[methods].slink}{else}{$methods[methods].line_number}{/if}]</span>
		  	</h3>
		<div class="function">
		  		 {if $sdesc != ''}{$sdesc|default:''}<br />{/if}
				{if $desc != ''}{$desc|default:''}<br />{/if}
				
		  		<!-- {include file="docblock.tpl" sdesc=$methods[methods].sdesc desc=$methods[methods].desc tags=$methods[methods].tags} -->
		  		{if $methods[methods].descmethod}
		<p>Overridden in child classes as:<br />
		{section name=dm loop=$methods[methods].descmethod}
		<dl>
		<dt>{$methods[methods].descmethod[dm].link}</dt>
		<dd>{$methods[methods].descmethod[dm].sdesc}</dd>
		</dl>
		{/section}</p>
		{/if} 
		<div class="titl_ct">
		
			<h3>Sintax:</h3>
			
		</div>
		<div class="code">
			 
  			<code>{$methods[methods].function_return} {if $methods[methods].ifunction_call.returnsref}&amp;{/if}{$methods[methods].function_name}(
  				{if count($methods[methods].ifunction_call.params)}
  				{section name=params loop=$methods[methods].ifunction_call.params}
  				{if $smarty.section.params.iteration != 1}, {/if}
  				{if $methods[methods].ifunction_call.params[params].hasdefault}[{/if}{$methods[methods].ifunction_call.params[params].type}
  				{$methods[methods].ifunction_call.params[params].name}{if $methods[methods].ifunction_call.params[params].hasdefault} = {$methods[methods].ifunction_call.params[params].default}]{/if}
  				{/section}
  				{/if})
			</code>
	  	</div>
		{if $methods[methods].method_implements}
		<hr class="separator" />
		<div class="notes">Implementation of:</div>
		{section name=imp loop=$methods[methods].method_implements}
		<dl>
			<dt>{$methods[methods].method_implements[imp].link}</dt>
			{if $methods[methods].method_implements[imp].sdesc}
			<dd>{$methods[methods].method_implements[imp].sdesc}</dd>
			{/if}
		</dl>
		{/section}
		{/if}
		{* original    {if $methods[methods].descmethod != ""
		{$methods[methods].descmethod<br />
			{/if *}
			{if $methods[methods].method_overrides}Overrides {$methods[methods].method_overrides.link} ({$methods[methods].method_overrides.sdesc|default:"parent method not documented"})<br /><br />{/if}
			{* original    {if $methods[methods].method_overrides != ""
			{$methods[methods].method_overrides<br />
				{/if *}
				{if count($methods[methods].params) > 0}
				<div class="param_content">
				<h3>Parameters:</h3>
				<div class="data_tg">
					<table border="0" cellspacing="0" cellpadding="0">
						{section name=params loop=$methods[methods].params}
						<tr> 
							<td><b>{$methods[methods].params[params].var}</b>&nbsp;&nbsp;</td> 
        					<td class="type">({$methods[methods].params[params].datatype})&nbsp;&nbsp; </td>
        					
        					<td>- &nbsp;{$methods[methods].params[params].data}</td>
      					</tr>
    					{/section}
    				</table>
				</div>
				</div>
    			{/if} 
				<div class="content_tags_sep">
					{section name=tag loop=$methods[methods].tags}     
						{if ( $methods[methods].tags[tag].keyword == 'return')}
						    <div class="content_tags_sep">
						    
						 	<h3>{$methods[methods].tags[tag].keyword|capitalize}:</h3> 
							
							<div class="data_tg">{$methods[methods].function_return}  - {$methods[methods].tags[tag].data}</div> 
						    	
						    </div>    
						{else} 
						<div class="content_tags_sep">
							<h3>{$methods[methods].tags[tag].keyword|capitalize}:</h3>
							
							<div class="data_tg">{$methods[methods].tags[tag].data}</div>  
						</div>
						{/if}               
					{/section}
				</div>  
				
				<hr/>
    			<div class="top">[ <a href="#top">Top</a> ]</div>
				
  			</div>
			</div>
			{/if}
			{/if}
{/section}
