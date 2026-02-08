---
name: flask-data-persistence
description: Professional database management with SQLAlchemy and Flask-Migrate.
---

# Flask Data Persistence

Managing state is at the heart of any web app. This skill focuses on the SQLAlchemy ORM.

## Models & relationships
- **Declarative Base**: Defining tables as Python classes.
- **Relationships**: Using `db.relationship` for One-to-Many and Many-to-Many mappings.

## Migrations (Flask-Migrate)
Never manually edit your database schema. Use migrations.
1. **init**: `flask db init`
2. **generate**: `flask db migrate -m "Added user bio"`
3. **apply**: `flask db upgrade`

## Performance
- **Lazy Loading**: Understanding `select`, `joined`, and `subquery` loading strategies to avoid N+1 problems.
- **Pagination**: Use `paginate()` for manageable data display.

## Best Practices
- **Transactions**: Ensure atomic updates within a single request context.
- **Sensitive Data**: Hash passwords before storing using `Werkzeug` or `Passlib`.

