---
name: Presentation Storyteller
description: Principles for creating narrative-driven, presentation-ready Jupyter notebooks for stakeholders.
---

# Presentation Storyteller

Data science results are only as impactful as they are understood. This skill focuses on turning a technical notebook into a "data story" for stakeholders.

## The "Data Story" Framework
1. **The Hook**: Start with the business question or problem.
2. **The Context**: Briefly explain the data source and its limitations.
3. **The Discovery**: Show the key insight (visual first, text second).
4. **The "So What?"**: Explain the impact of this discovery.
5. **The Recommendation**: Conclude with clear action items.

## Notebook Presentation Tactics
- **Markdown-to-Code Ratio**: Aim for a 2:1 ratio of narrative text to code cells in the final presentation.
- **Visual Hierarchy**: Big, bold titles for charts. Use color sparingly to highlight the *one* thing you want them to notice.
- **Hiding Complexity**: Use `IPython.display` to output clean HTML tables instead of raw dataframe printouts. Use widgets for interactivity.
- **Code-Only Cells**: Mark non-essential code cells for removal during export (using tool-specific tags like `# [hide]`).

## Tools for Presentation Mode
- **RISE**: Convert notebooks into live reveal.js slideshows.
- **Voila**: Turn notebooks into standalone interactive web apps.
- **Quarto**: The modern standard for high-quality static reports and presentations.

## Best Practices
- **Captions**: Every chart must have a caption that summarizes the "key takeaway."
- **Executive Summary**: Always start the notebook with a 1-paragraph TL;DR.
