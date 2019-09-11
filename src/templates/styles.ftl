<style data-senna-track="temporary">
	.override-theme-colors .navbar-top {
		background-image: -webkit-linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 200%);
		background-image: linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 200%);
		background-color: ${theme_color};
	}

	.override-theme-colors .site-navigation .navbar-nav a:after {
		background-image: -webkit-linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 100%);
		background-image: linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 100%);
		transition: width 0.3s ease 0s, left 0.3s ease 0s;
		background-color: ${theme_color};
	}

	.override-theme-colors .social-icons .social-icon {
		color: ${text_with_theme_background_color};
	}

	.override-theme-colors .social-icons.d-md-none .social-icon {
		color: ${theme_color};
	}

	.override-theme-colors #footer {
		background-image: -webkit-linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 200%);
		background-image: linear-gradient(60deg, ${theme_color} 0%, ${theme_blend_color} 200%);
		background-color: ${theme_color};
		color: ${text_with_theme_background_color};
	}
</style>