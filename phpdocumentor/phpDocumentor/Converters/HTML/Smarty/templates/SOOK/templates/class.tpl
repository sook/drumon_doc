{include file="header.tpl" eltype="class" hasel=true contents=$classcontents}

{if $conflicts.conflict_type}
<div class="warning">Conflicts with classes:<br />
	{section name=me loop=$conflicts.conflicts}
	{$conflicts.conflicts[me]}<br />
	{/section}
</div>
	{/if} 
	
{* original <div class="warning">{$conflicts</div> *}

<div class="content_class">

			<!-- <h3><a href="#class_details">{if $is_interface}Interface{else}Class{/if} Overview</a></h3> -->
			<pre>{section name=tree loop=$class_tree.classes}{$class_tree.classes[tree]}{$class_tree.distance[tree]}{/section}</pre><br />
			<div class="description">{$sdesc|default:''}</div><br />
			<h3>File Name:</h3>
			{$source_location} [line {if $class_slink}{$class_slink}{else}{$line_number}{/if}]
			
			{if $tutorial}
				<h4 class="classtutorial">{if $is_interface}Interface{else}Class{/if} Tutorial:</h4>
				<ul>
					<li>{$tutorial}</li>
				</ul>
			{/if}
		<!-- {if count($tags) > 0}
				<h4>Author(s):</h4>
				<ul>
				  {section name=tag loop=$tags}
				    {if $tags[tag].keyword eq "author"}
				    <li>{$tags[tag].data}</li>
				    {/if}
				  {/section}
				</ul>
				{/if}    -->
		
			{assign var="version" value=""}
			{assign var="copyright" value=""}
			
			{section name=tag loop=$tags}
			  {if $tags[tag].keyword eq "version"}
			  {assign var="version" value=$tags[tag].data}
			  {/if}
			  {if $tags[tag].keyword eq "copyright"}
			  {assign var="copyright" value=$tags[tag].data}
			  {/if}
			{/section}
		
			{if $version}
			<h4>Version:</h4>
			<ul>
			  <li>{$version}</li>
			</ul>
			{/if}
		
			{if $copyright}
			<h4>Copyright:</h4>
			<ul>
			  <li>{$copyright}</li>
			</ul>
			{/if}
		        {if $implements}
		        <p class="implements">
		            Implements interfaces:
		            <ul>
		                {foreach item="int" from=$implements}<li>{$int}</li>{/foreach}
		            </ul>
		        </p>
		        {/if}
		
		</td>
		<div class="content_right_method">

		{if count($contents.var) > 0} 
		<div class="content_pacotes_top"> 
			<a href="#class_vars"><span class="title_pacote">Variables</span></a>
		</div>
		<div class="content_pacotes">  
			<ul>
			  {section name=contents loop=$contents.var}
			  <li>{$contents.var[contents]}</li>
			  {/section}
			</ul>
		</div>
		{/if}
		
		{if count($contents.const) > 0} 
		<div class="content_pacotes_top">
			<a href="#class_consts"><span class="title_pacote">Constants</span></a>
		</div>
		<div class="content_pacotes">  
			<ul>
			  {section name=contents loop=$contents.const}
			  <li>{$contents.const[contents]}</li>
			  {/section}
			</ul>
		</div>
		{/if} 
		
		{if count($contents.method) > 0}  
		<div class="content_pacotes_top"> 
		<a href="#class_methods"><span class="title_pacote">Methods</span></a>  
		</div>
		<div class="content_pacotes">  
			
				
				<ul>
				  {section name=contents loop=$contents.method}
				  <li>{$contents.method[contents]}</li>
				  {/section}
				</ul>
		</div>
		{/if}

		</div>
</div>
<div class="content_class">

	{* original {if $children != ""
	<valign="top">
	<h3>Child classes:</h3>
	<div class="tags">
	{$children *}

	{if $children}

	<h3>Child classes:</h3>
	<div class="tags">
	{section name=kids loop=$children}
	<dl>
	<dt>{$children[kids].link}</dt>
		<dd>{$children[kids].sdesc}</dd>
	</dl>
	{/section}
	</div>

	{/if}

	{if $iconsts && count($iconsts) > 0}

	<h3>Inherited Constants h3>
	{section name=iconsts loop=$iconsts}
	<div class="tags">
	<h4>Class: {$iconsts[iconsts].parent_class}</h4>
	<dl>
	{section name=iconsts2 loop=$iconsts[iconsts].iconsts}
	<dt>
	  {$iconsts[iconsts].iconsts[iconsts2].link}
	</dt>
	<dd>
	  {$iconsts[iconsts].iconsts[iconsts2].iconsts_sdesc} 
	</dd>
	{/section}
	</dl>
	</div>
	{/section}

	{/if}

	{if $ivars && count($ivars) > 0}

	<h3>Inherited Variables</h3>
	{section name=ivars loop=$ivars}
	<div class="tags">
	<h4>Class: {$ivars[ivars].parent_class}</h4>
	<dl>
	{section name=ivars2 loop=$ivars[ivars].ivars}
	<dt>
	  {$ivars[ivars].ivars[ivars2].link}
	  {* original <a href="{$ivars[ivars].ivars[ivars2].ipath #{$ivars[ivars].ivars[ivars2].ivar_name ">{$ivars[ivars].ivars[ivars2].ivar_name </a> *}
	</dt>
	<dd>
	  {$ivars[ivars].ivars[ivars2].ivars_sdesc} 
	</dd>
	{/section}
	</dl>
	</div>
	{/section}
	{/if}

	{if $imethods && count($imethods) > 0}
	<h3>Inherited Methods</h3>
	<div class="tags">
	{section name=imethods loop=$imethods}
	<h4>Class: {$imethods[imethods].parent_class}</h4>
	<dl>
	  {section name=im2 loop=$imethods[imethods].imethods}
	  <dt>
	    {$imethods[imethods].imethods[im2].link}
	{* original    <a href="{$imethods[imethods].imethods[im2].ipath#{$imethods[imethods].imethods[im2].ifunction_name">{$imethods[imethods].imethods[im2].ifunction_call</a> *}
	  </dt>
	  <dd>
	    {$imethods[imethods].imethods[im2].sdesc}
	  </dd>
	  {/section}
	</dl>
	{/section}
	</div>
	{/if}

</div>
<div class="content_class">
  	<!-- <a name="class_details"></a>
	<h3>Class Details</h3>
	<div class="tags">
	[line {if $class_slink}{$class_slink}{else}{$line_number}{/if}]<br />
	{include file="docblock.tpl" type="class" sdesc=$sdesc desc=$desc}       
	</div><br /><br />
	<div class="top">[ <a href="#top">Top</a> ]</div><br />                 -->

	{if $vars && count($vars) > 0}
	<a name="class_vars"></a>
	<h3>Class Variables</h3> 
	<hr /> 
	<div class="tags">
	{include file="var.tpl"}
	</div>
	{/if}

	{if $methods & count($methods) > 0}
	<a name="class_methods"></a>
	<h3>Methods</h3> 
	<hr />
	<div class="tags">
	{include file="method.tpl"}
	</div>
	{/if}

	{if $consts && count($consts) > 0}
	<a name="class_consts"></a>
	<h3>Class Constants</h3> 
	<hr /> 
	<div class="tags">
	{include file="const.tpl"}
	</div>
	{/if}
</div>

{include file="footer.tpl"}