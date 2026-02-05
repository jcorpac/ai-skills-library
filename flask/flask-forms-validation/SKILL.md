---
name: Flask Forms & Validation
description: Securely handling user input using Flask-WTF and robust validation patterns.
---

# Flask Forms & Validation

User input is the most dangerous part of a web app. Flask-WTF provides a secure, Pythonic layer of protection.

## Form Definitions
- **WTForms**: Define forms as Python classes (e.g., `LoginForm(FlaskForm)`).
- **Validators**: Use `DataRequired()`, `Email()`, `Length()`, and custom methods to ensure data integrity.

## CSRF Protection
Flask-WTF automatically handles Cross-Site Request Forgery tokens. Ensure `{{ form.hidden_tag() }}` is present in your templates.

## File Uploads
Use `FileField` and `FileRequired` with `secure_filename()` to safely handle user-uploaded media.

## Best Practices
- **Feedback**: Display clear error messages next to invalid fields using `form.errors`.
- **POST/Redirect/GET Pattern**: Always redirect after a successful form submission to prevent duplicate data.
