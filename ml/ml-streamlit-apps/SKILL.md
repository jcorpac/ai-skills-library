---
name: ml-streamlit-apps
description: Rapidly building and deploying interactive machine learning dashboards.
---

# Streamlit ML Apps

Streamlit turns data scripts into shareable web apps in minutes. No front-end experience required.

## Layout & Widgets
- **Sidebar**: Use `st.sidebar` for controls.
- **Interactivity**: Use `st.slider`, `st.selectbox`, and `st.button` for user input.
- **Charts**: Native support for Matplotlib, Plotly, Altair, and more.

## State Management
- **Session State**: Use `st.session_state` to store values across reruns (e.g., user selections or model results).

## Caching
- **Performance**: Use `@st.cache_data` for expensive computations or data loading to ensure the app remains responsive.

## Best Practices
- **UI Design**: Keep it simple. Use `st.markdown` for rich explanations.
- **Feedback**: Use `st.spinner` or `st.progress` for long-running tasks.

