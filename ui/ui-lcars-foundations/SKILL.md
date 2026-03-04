---
name: ui-lcars-foundations
description: Core design system and layout principles for replicating the Star Trek LCARS graphical interface.
---

# LCARS UI Foundations

LCARS (Library Computer Access/Retrieval System) is the iconic, flat, colorful operating system interface from the Star Trek universe (specifically the TNG era). This skill provides the core design tokens and layout strategies needed to replicate it strictly with HTML and CSS.

## The LCARS Philosophy
LCARS is characterized by its stark contrast, distinct blocky shapes, tight grouping of related elements, and functional aesthetic. There is no shading, no gradient (usually), no borders, and no drop shadows.

## Design Tokens (CSS Variables)

Define these core variables at the root of your CSS to ensure consistency:

```css
:root {
  /* The mandatory background */
  --lcars-bg: #000000;
  
  /* Core LCARS Palette */
  --lcars-orange: #ff9900;
  --lcars-pale-orange: #ffcc99;
  --lcars-pink: #cc6699;
  --lcars-purple: #9999cc;
  --lcars-blue: #99ccff;
  --lcars-red: #cc0000;
  --lcars-tan: #ffcc66;
  
  /* Spacing */
  --lcars-gap: 5px; /* LCARS elements are tightly packed, separated by this consistent black gap */
  --lcars-radius-large: 50px; /* Used for the sweeping elbows */
  --lcars-radius-pill: 20px; /* Used for the standard data buttons */
}
```

## Typography

LCARS typography is highly distinctive.
- **Font Family**: You must use a tall, sans-serif, condensed font. `Antonio`, `Oswald`, or `Swiss911` (if available) are standard choices.
- **Case**: Text is almost universally `text-transform: uppercase`.
- **Sizing**: Text sizes vary, but generally, labels are large and data readout is smaller.
- **Alignment**: Text on buttons is typically right-aligned (`text-align: right`) and pushed tight to the right edge.

```css
body {
  font-family: 'Antonio', 'Impact', sans-serif;
  background-color: var(--lcars-bg);
  color: var(--lcars-orange); /* Default text color */
  text-transform: uppercase;
}
```

## Layout Strategy: The Grid

LCARS interfaces are intensely grid-based. The interface usually features a prominent vertical sweeping bar on the left (or right) that "elbows" into horizontal sections.

- Use **CSS Grid** (`display: grid`) for the macro-layout of the screen (e.g., dividing the sidebar from the main content viewing area).
- Use **Flexbox** (`display: flex`) for aligning the tight clusters of pill buttons within their respective data rows.
- The black background (`--lcars-bg`) acts as the border between elements. Set `gap: var(--lcars-gap)` on your grid/flex containers to automatically create the iconic LCARS separation lines.
