<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<#include "${full_templates_path}/styles.ftl" />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top py-2">
				<div class="container-fluid px-lg-4 px-xl-6 user-personal-bar">
					<div class="align-items-center autofit-row">
						<#if show_language_selector>
							<div class="autofit-col language-selector mr-1 mr-md-2">
								<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

								<@liferay_portlet["runtime"]
									defaultPreferences=preferences
									portletProviderAction=portletProviderAction.VIEW
									portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
								/>
							</div>
						</#if>

						<#if show_secondary_header_navigation>
							<div class="autofit-col autofit-col-expand d-md-block d-none ml-3 mr-1 mr-md-2 secondary-navigation">
								<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

								<@liferay_portlet["runtime"]
									defaultPreferences=preferences
									instanceId="secondary_navigation"
									portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"
								/>
							</div>
						</#if>

						<div class="d-md-block d-none social-icons mr-1 mr-md-2 flex-shrink-0">
							<#include "${full_templates_path}/social_icons.ftl" />
						</div>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

						<div class="autofit-col flex-grow-1 flex-shrink-1">
							<#if show_header_search>
								<div class="justify-content-md-end ml-md-2 mr-2 mr-md-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-classic navbar-expand-md navbar-light py-2 site-navigation">
				<div class="container-fluid px-lg-4 px-xl-6">
					<a class="${logo_css_class} align-items-center d-md-inline-flex d-none logo-md mr-4" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
						<img alt="${logo_description}" class="mr-2 site-logo" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-light h2 mb-0 text-dark text-uppercase">${site_name}</h1>
						</#if>
					</a>
					
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs mr-4" href="${site_default_url}" rel="nofollow">
						<img alt="${logo_description}" class="mr-2 site-logo" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-light h2 mb-0 text-dark text-uppercase">${site_name}</h1>
						</#if>
					</a>

					<div class="d-md-none social-icons mr-1 mr-md-2 flex-shrink-0">
						<#include "${full_templates_path}/social_icons.ftl" />
					</div>

					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</div>
		</header>
	</#if>

	<#if show_breadcrumb>
	<section>
		<div class="container">
  			<div class="row">
    			<div class="col-sm">
					<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

					<@liferay_portlet["runtime"]
						defaultPreferences=preferences
						instanceId="main_breadcrumb"
    					portletName="com_liferay_site_navigation_breadcrumb_web_portlet_SiteNavigationBreadcrumbPortlet"
					/>
				</div>
			</div>
		</div>
	</section>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h1 class="sr-only">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<footer class="footer" id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="align-items-center col-md-4 d-flex justify-content-md-start justify-content-center">
						<span>
							<@liferay.language key="powered-by" />

							<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>
						</span>
					</div>

					<div class="col-md-8 d-flex justify-content-md-start justify-content-center">
						<#if show_footer_navigation>
							<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

							<@liferay_portlet["runtime"]
								defaultPreferences=preferences
								instanceId="${group_id}footer_navigation"
								portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"
							/>
						</#if>
					</div>
				</div>
			</div>
		</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>