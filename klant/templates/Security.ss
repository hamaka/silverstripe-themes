<!doctype html>

<!-- #################################################### -->
<!--                                                      -->
<!--           Created by: hamaka - utrecht               -->
<!--           website:    http://www.hamaka.nl           -->
<!--           e-mail:     info@hamaka.nl                 -->
<!--                                                      -->
<!-- #################################################### -->

<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="$ContentLocale"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" lang="$ContentLocale"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" lang="$ContentLocale"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang="$ContentLocale"><!--<![endif]-->
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

	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="apple-touch-icon" href="apple-touch-icon.png" />

	<script src="mysite/javascript/modernizr-2.6.2.min.js"></script>

</head>

<body class="SecurityPage {$ClassName}">
	<!--[if lt IE 7]><p class="chromeframe">Uw browser biedt geen ondersteuning voor moderne websites.</p><![endif]-->

    $Layout

</body>

</html>