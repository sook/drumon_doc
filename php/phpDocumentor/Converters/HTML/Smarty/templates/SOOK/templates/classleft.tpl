{foreach key=subpackage item=files from=$classleftindex}
  <div class="content_pacotes">  
	{if $subpackage != ""}{$subpackage}{/if}
	<ul>
	{section name=files loop=$files}
    {if $subpackage != ""}{/if}
		{if $files[files].link != ''}<li><a href="{$files[files].link}">{/if}{$files[files].title}{if $files[files].link != ''}</a></li>{/if}
	{/section}  
	</ul>
  </div>
{/foreach}
