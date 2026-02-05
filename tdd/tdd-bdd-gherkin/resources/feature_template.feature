Feature: [User Objective]
    As a [Role]
    I want [Action]
    So that [Benefit]

    Scenario: [Specific Case]
        Given [Initial Context]
        And [Additional State]
        When [Action performed]
        Then [Expected Outcome]
        And [Secondary Check]

    @smoke
    Scenario Outline: [Repetitive Task]
        Given data is <input>
        When processed
        Then result should be <output>

        Examples:
            | input | output |
            | val1  | res1   |
            | val2  | res2   |
