<#assign
	rss_url = getterUtil.getString(themeDisplay.getThemeSetting("rss-url"))
	twitter_url = getterUtil.getString(themeDisplay.getThemeSetting("twitter-url"))
	facebook_url = getterUtil.getString(themeDisplay.getThemeSetting("facebook-url"))
	youtube_url = getterUtil.getString(themeDisplay.getThemeSetting("youtube-url"))
	instagram_url = getterUtil.getString(themeDisplay.getThemeSetting("instagram-url"))

	show_breadcrumb = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumb"))
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_footer_navigation = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer-navigation"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
	show_language_selector = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-language-selector"))
	show_secondary_header_navigation = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-secondary-header-navigation"))
	wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content"))

	theme_color = getterUtil.getString(themeDisplay.getThemeSetting("theme-color"))
	theme_blend_color = getterUtil.getString(themeDisplay.getThemeSetting("theme-blend-color"))
	text_with_theme_background_color = getterUtil.getString(themeDisplay.getThemeSetting("text-with-theme-background-color"))
/>

<#if wrap_widget_page_content && (layout.getType() == "portlet")>
	<#assign portal_content_css_class = "container mt-4" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>

<#assign css_class = css_class + " override-theme-colors" />