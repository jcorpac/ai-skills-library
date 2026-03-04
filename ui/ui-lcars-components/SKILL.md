---
name: ui-lcars-components
description: CSS patterns for creating the iconic pill buttons, data bars, and sweeping elbows of the Star Trek LCARS interface.
---

# LCARS UI Components

This skill provides the CSS techniques for building specific elements of the LCARS interface. **Prerequisite**: You must first review `ui-lcars-foundations` for the core colors and layout grid.

## The LCARS Pill Button

The fundamental interactive unit of LCARS is the elongated pill-shaped button. 

```css
.lcars-button {
  display: inline-block;
  background-color: var(--lcars-orange);
  color: #000; /* Text is usually black on the bright buttons */
  font-family: 'Antonio', sans-serif;
  text-transform: uppercase;
  text-align: right; /* Text pushed to the edge */
  padding: 10px 15px;
  
  /* The core pill shape */
  border-radius: var(--lcars-radius-pill);
  
  /* No borders or shadows in LCARS */
  border: none;
  box-shadow: none;
  cursor: pointer;
}

/* LCARS interfaces are static; hover states should be subtle, usually just a color shift */
.lcars-button:hover {
  background-color: var(--lcars-tan);
}
```

### Half-Pill Variations
Often, buttons sitting flush against a hard edge are only rounded on one side.

```css
.lcars-button.left-round {
  border-radius: var(--lcars-radius-pill) 0 0 var(--lcars-radius-pill);
}

.lcars-button.right-round {
  border-radius: 0 var(--lcars-radius-pill) var(--lcars-radius-pill) 0;
}
```

## The LCARS "Elbow"

The most distinct element of LCARS is the sweeping, curved elbow that connects a vertical sidebar data block to a horizontal header data block. This requires creating an L-shaped div and using large `border-radius` values to sweep the inner and outer corners.

```css
.lcars-elbow {
  background-color: var(--lcars-blue);
  /* The exact width and height will depend on your grid layout */
  width: 150px;
  height: 50px;
  
  /* The top-left corner is fully rounded. Other corners are blunt (0). */
  border-top-left-radius: var(--lcars-radius-large);
  
  /* The elbow usually contains a cutout or a gap.
     You achieve the inner curve using a pseudo-element placed over the corner with the background color matching the app background. */
  position: relative;
}

.lcars-elbow::after {
  content: '';
  position: absolute;
  /* Position this "cutout" box at the inner corner */
  bottom: 0;
  right: 0;
  width: 50px;
  height: 50px;
  background-color: var(--lcars-bg); /* Match the black background */
  
  /* Curve the cutout to match the sweep */
  border-top-left-radius: var(--lcars-radius-pill);
}
```

## Data Bars and Dividers

LCARS uses solid blocks of color to act as dividers or to bracket blocks of text data.

```css
.lcars-bar-horizontal {
  background-color: var(--lcars-purple);
  height: 20px;
  width: 100%;
  border-radius: 10px; /* Slight rounding, or flush if touching an edge */
}

/* Very tall, thin bars often flank text */
.lcars-bar-vertical {
  background-color: var(--lcars-pink);
  width: 15px;
  height: 100%;
}
```

## Creating Complex Panels

By combining these components inside the Flexbox or CSS Grid layout defined in `ui-lcars-foundations`, you build the complex, segmented "screen" interface. The spacing between all these blocks **must** be pure black (`--lcars-bg`) to serve as the signature LCARS dividing lines.
