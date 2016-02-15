<div id="Content" class="searchResults">
	<h1>$Title</h1>

	<% if $Query %>
		<p class="searchQuery">U zocht op &quot;{$Query}&quot;</p>
	<% end_if %>

	<% if $Results %>
		<ul id="SearchResults">
			<% loop $Results %>
				<li>
					<h4>
						<a href="$Link">
							<% if $MenuTitle %>
								$MenuTitle
							<% else %>
								$Title
							<% end_if %>
						</a>
					</h4>
					<% if $Content %>
						<p>$Content.LimitWordCountXML</p>
					<% end_if %>
					<a class="readMoreLink" href="$Link" title="Lees meer over &quot;{$Title}&quot;">Lees meer over &quot;{$Title}
						&quot;...</a>
				</li>
			<% end_loop %>
		</ul>
	<% else %>
		<p>Sorry, uw zoekopdracht leverde geen resultaten op.</p>
	<% end_if %>

	<% if $Results.MoreThanOnePage %>
		<div id="PageNumbers">
			<div class="pagination">
				<% if $Results.NotFirstPage %>
					<a class="prev" href="$Results.PrevLink" title="Bekijk de vorige pagina">&larr;</a>
				<% end_if %>
				<span>
					<% loop $Results.Pages %>
						<% if $CurrentBool %>
							$PageNum
						<% else %>
							<a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
						<% end_if %>
					<% end_loop %>
				</span>
				<% if $Results.NotLastPage %>
					<a class="next" href="$Results.NextLink" title="Bekijk de volgende pagina">&rarr;</a>
				<% end_if %>
			</div>
			<p>Pagina $Results.CurrentPage van $Results.TotalPages</p>
		</div>
	<% end_if %>
</div>
