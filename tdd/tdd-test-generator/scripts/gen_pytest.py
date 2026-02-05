import sys
import os

def generate_pytest(filename, function_name):
    """Generates a basic pytest boilerplate for a given function."""
    template = f'''import pytest
from {filename.split('.')[0]} import {function_name}

def test_{function_name}_success():
    """Test successful execution of {function_name}."""
    # Arrange
    # input_data = ...
    # expected_output = ...
    
    # Act
    # result = {function_name}(input_data)
    
    # Assert
    # assert result == expected_output
    pass

def test_{function_name}_invalid_input():
    """Test {function_name} with invalid input."""
    with pytest.raises(ValueError):
        # {function_name}(None)
        pass
'''
    return template

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python gen_pytest.py <filename> <function_name>")
        sys.exit(1)
    
    file_name = sys.argv[1]
    func_name = sys.argv[2]
    content = generate_pytest(file_name, func_name)
    
    test_file = f"test_{file_name}"
    with open(test_file, "w") as f:
        f.write(content)
    
    print(f"Generated {test_file}")
