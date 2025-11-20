# Aether Browser Themes

This directory contains custom themes and styling for Aether Browser.

## Theme Structure

### Default Theme
- **Location**: `default/`
- **Description**: Clean, modern default theme for Aether Browser
- **Features**: Dark/light mode support, accessibility optimized

### Developer Theme
- **Location**: `developer/`
- **Description**: Developer-focused theme with enhanced debugging visuals
- **Features**: Syntax highlighting, grid overlays, performance indicators

## Files

- `userChrome.css` - Browser UI styling
- `userContent.css` - Web content styling
- `variables.css` - Theme variables and colors
- `components/` - Individual component styles

## Customization

Themes support CSS custom properties for easy customization:

```css
:root {
  --aether-primary-color: #007acc;
  --aether-background-color: #1e1e1e;
  --aether-text-color: #ffffff;
  --aether-accent-color: #ff6b35;
}
```