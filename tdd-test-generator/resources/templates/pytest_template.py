import pytest

def test_template_basic():
    # Arrange
    expected = None
    input_val = None
    
    # Act
    # result = my_function(input_val)
    
    # Assert
    # assert result == expected
    pass

@pytest.mark.parametrize("input_val, expected", [
    (1, 2),
    (10, 11),
    (0, 1),
    (-1, 0),
])
def test_template_parameterized(input_val, expected):
    # result = my_function(input_val)
    # assert result == expected
    pass
