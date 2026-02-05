# Flask Security Audit Checklist

## 🔑 Authentication
- [ ] Passwords hashed using `pbkdf2:sha256` or `bcrypt`.
- [ ] `SECRET_KEY` pulled from environment variables, never hardcoded.
- [ ] Session cookies set to `HttpOnly` and `Secure`.
- [ ] Token expiration (JWT) implemented and enforced.

## 🛡️ Input & Validation
- [ ] All forms use CSRF protection (`Flask-WTF`).
- [ ] Input data validated with `Marshmallow` or `WTForms`.
- [ ] SQL ijection prevented via SQLAlchemy ORM usage.
- [ ] File uploads sanitized using `secure_filename()`.

## 🌐 Headers & Config
- [ ] `Flask-Talisman` or similar used for security headers (CSP, HSTS).
- [ ] Debug mode disabled in production.
- [ ] Error messages do not leak internal system details.

## 📦 Dependencies
- [ ] All packages updated (`pip list --outdated`).
- [ ] No secrets (API keys) committed to Git.
