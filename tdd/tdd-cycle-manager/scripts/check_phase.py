#!/usr/bin/env python3
# TDD Cycle Manager - Phase Checker
import sys
import subprocess

def check_phase(test_command):
    """
    Runs the test command and suggests the next TDD phase.
    """
    print(f"Running: {test_command}")
    try:
        result = subprocess.run(test_command, shell=True, capture_output=True, text=True)
        if result.returncode == 0:
            print("\n[\033[92mPASS\033[0m] All tests passed.")
            print("Next Phase: \033[94mREFACTOR\033[0m (or start a new \033[91mRED\033[0m cycle for the next feature).")
        else:
            print("\n[\033[91mFAIL\033[0m] Tests failed.")
            print(result.stdout)
            print(result.stderr)
            print("Next Phase: \033[92mGREEN\033[0m (implement logic to pass these tests).")
    except Exception as e:
        print(f"Error running tests: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python check_phase.py '<test_command>'")
        sys.exit(1)
    
    check_phase(" ".join(sys.argv[1:]))
