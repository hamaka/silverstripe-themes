<!doctype html>

<!-- #################################################### -->
<!--                                                      -->
<!--           Created by: hamaka - utrecht               -->
<!--           website:    http://www.hamaka.nl           -->
<!--           e-mail:     info@hamaka.nl                 -->
<!--                                                      -->
<!-- #################################################### -->

<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="$ContentLocale"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie10  lt-ie9 lt-ie8" lang="$ContentLocale"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="$ContentLocale"><![endif]-->
<!--[if IE 9 ]><html class="no-js lt-ie10" lang="$ContentLocale"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="$ContentLocale"> <!--<![endif]-->

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<% base_tag %>

	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title
		<% if $SiteConfig.Tagline %> &raquo; $SiteConfig.Tagline<% end_if %></title>

	$MetaTags('false')

	<meta name="HandheldFriendly" content="True" />
	<meta name="MobileOptimized" content="970" />
	<meta name="viewport" content="width=970, target-densitydpi=160dpi" />
	<meta name="gen-date" content="{$Now.Nice}" />
	<meta name="dyn-cache" content="{$UsedDynamicCacheKey}" />

	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="apple-touch-icon" href="apple-touch-icon.png" />

	<script src="mysite/javascript/modernizr-2.6.2.min.js"></script>
	<!-- combinedcss -->
	$BugherdCode
</head>

<body class="{$ClassName} {$CopyContentFrom.ClassName}"><% if $CurrentMember.inGroup('Administrators') %><div class="debug on"><span class="px"> px</span></div><% end_if %>

	<!--[if lt IE 7]><p class="chromeframe">U gebruikt een <strong>verouderde</strong> browser. <a href="http://browsehappy.com/">Upgrade naar een nieuwere browser</a> of <a href="http://www.google.com/chromeframe/?redirect=true">activeer Google Chrome Frame</a> om deze website te bekijken in uw huidige browser.</p><![endif]-->

	<div id="container">
		$SearchForm
		$Layout
	</div>

	<!-- required js will be placed above this first scripttag -->
	<!--[if IE 8]>
		<script src="mysite/javascript/js/rem.js" type="text/javascript"></script>
	<![endif]-->
	<script type="text/javascript">//<![CDATA[
		window.jQuery || document.write(unescape('%3Cscript src="mysite/javascript/jquery-1.10.1.min.js"%3E%3C/script%3E'));
	//]]></script>

	<% if $SiteConfig.GACode %>
		<script type="text/javascript">
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			  ga('create', '$SiteConfig.GACode', 'auto');
			  ga('send', 'pageview');

		</script>
	<% end_if %>

	<!--[if IE 8]>
		<script src="mysite/javascript/ie_css3.js" type="text/javascript"></script>
	<![endif]-->

    <% if $EnvironmentInfo %>
      <% with $EnvironmentInfo %>
        <% if $stage == 'stage' %>
				<div class="debug-environment">
					<span>Preview</span>
				</div>
        <% end_if %>
        <% if $host != 'live' %>
				<div class="debug-hostindicator $host">
          <% if $isHamaka %>
						<span>Host: $host</span>
						<span>Mode: $environment</span>
						<span>Stage: $stage</span>
          <% else %>
						<span>$host</span>
          <% end_if %>
				</div>
        <% end_if %>
      <% end_with %>
    <% end_if %>

	$BetterNavigator
</body>

</html>