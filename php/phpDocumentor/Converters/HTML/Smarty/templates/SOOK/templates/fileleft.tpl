{foreach key=subpackage item=files from=$fileleftindex}
	{if $subpackage != ""}subpackage <b>{$subpackage}</b>{/if}
	<ul>
	{section name=files loop=$files}
		{if $files[files].link != ''}<li><a href="{$files[files].link}">{/if}
		{$files[files].title}
		{if $files[files].link != ''}</a></li>{/if}
	{/section}
	</ul>
{/foreach}
