
{if count($tags) > 0}
<br />
<h3>Tags:</h3>
<div class="tags">
<table border="0" cellspacing="0" cellpadding="0">
{section name=tag loop=$tags}
  <tr>
    <td><b>{$tags[tag].keyword}:</b>{$tags[tag].data}</td>
  </tr>
{/section}
</table>
</div>
{/if}