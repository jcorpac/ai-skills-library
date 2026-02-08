---
name: tdd-bdd-gherkin
description: Using behavior-driven development and Gherkin syntax to align business goals with technical tests.
---

# BDD & Gherkin

Behavior-Driven Development (BDD) encourages collaboration between developers, QA, and non-technical stakeholders.

## Gherkin Syntax
Tests are written in plain English using the `Given`, `When`, `Then` format:

- **Scenario**: A specific behavior being tested.
- **Given**: The initial context or state.
- **When**: An event or action occurs.
- **Then**: The expected outcome or consequence.

## Example Feature File
```gherkin
Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When they enter "valid_user" and "valid_password"
    And they click the login button
    Then they should be redirected to the dashboard
    And they should see a "Welcome back" message
```

## Best Practices
1. **Focus on Outcomes**: Spend more time on the *Then* than the *When*.
2. **Avoid Technical Details**: Feature files should not mention buttons, IDs, or implementation details.
3. **Collaborate Early**: Write feature files with the product owner before coding starts.

