{foreach key=subpackage item=files from=$classleftindex}  
	<ul style="margin-bottom:12px;">

	{if $subpackage != ""}<div class="subpq_class_left">{$subpackage}</div>{/if}
	{section name=files loop=$files}
    
		{if $files[files].link != ''}<li {if $subpackage != ""}style="margin-left:38px;"{/if}><a href="{$files[files].link}">{/if}{$files[files].title}{if $files[files].link != ''}</a></li>{/if}
	{/section}

	</ul>
{/foreach}
