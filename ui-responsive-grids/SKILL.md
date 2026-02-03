---
name: Responsive Grids
description: Advanced CSS Grid and Flexbox techniques for layouts that adapt seamlessly to any device.
---

# Responsive Grids

A layout should be fluid, not just "breakpoint-dependent." This skill explores the power of modern CSS for flexible design.

## CSS Grid
- **Auto-Fill vs. Auto-Fit**: Create many-column layouts that adjust automatically without media queries.
- **Fractional Units (fr)**: Flexible distribution of space.
- **Grid Areas**: For semantic, easy-to-read layout structures.

## Flexbox
- **Alignment**: Mastering `justify-content` and `align-items`.
- **Flex-Grow/Shrink**: Controlling how items fill or squeeze into space.
- **Gap**: Using the modern `gap` property instead of margin hacking.

## The "Modern" Breakpoint
Instead of hardcoding device widths, use `minmax()` and `clamp()` to create truly fluid typography and layouts.
`width: clamp(300px, 50%, 800px);`
