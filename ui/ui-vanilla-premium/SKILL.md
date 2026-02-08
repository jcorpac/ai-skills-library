---
name: ui-vanilla-premium
description: Creating high-end, bespoke user interfaces using vanilla CSS/JS without the bloat of heavy frameworks.
---

# Vanilla Premium UI

A "Premium" UI is defined by its attention to detail. This skill focuses on the visual polish that makes an interface feel state-of-the-art.

## Design Tokens
- **Color**: Use HSL for harmonious palettes and easy transparency adjustments.
- **Glassmorphism**: `backdrop-filter: blur(10px)` combined with subtle translucent borders.
- **Gradients**: Use multi-stop, angled gradients for biological feel.

## Micro-Animations
- **Hover States**: Subtle scale-up (`scale(1.02)`) and box-shadow transitions.
- **Interactions**: Use CSS variables and JS to create mouse-tracking effects.
- **Transitions**: Prefer `cubic-bezier` timing functions for more natural movement.

## Best Practices
- **Performance**: Animate only `transform` and `opacity` properties to avoid browser repaints.
- **Dark Mode**: Design with a dark-first mentality using CSS variables for easy swapping.

