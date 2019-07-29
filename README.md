# Custom 7.2 Theme Based on Liferay's Classic Theme

A simple Liferay theme that allows for easy customization of the color scheme.

### Desktop

![desktop](/src/images/desktop.png)

### Mobile

![mobile](/src/images/mobile.png)

### Features

* Embedded Language Selector in Header
* Embeded Navigation Portlet in Footer
* Social Icons
* Header Search
* Customizable Theme Settings

### Customizing

Any changes to the color scheme can be made in `_clay_variables.scss`. 

```scss
/* Theme Colors */

// $primary: #7ac2e5;
// $secondary: #57585a;
// $success: #093829;
// $info: #17ab8b;
// $warning: #cb5648;
// $danger: #c2242e;
// $light: #e6e7e9;
// $dark: #083829;

/* Header and Navigation Background Color */

$theme: #00467F; // Primary color on header, footer, and navigation hover effect.
$themeSoft: #A5CC82; // Secondary color on header, footer, and navigation hover effect.

$textWithThemeBackground: #FFF; // Color of text to be used when the background is the `$theme` color.
```