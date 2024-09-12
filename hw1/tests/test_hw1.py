"""
Tests for math.py
"""

from hw1 import math


def test_plus_two():
    """
    Verify if the plus_two function works as intended
    """
    assert math.plus_two(3) == 5


def test_minus_two():
    """
    Verify if the minus_two function works as intended
    """
    assert math.minus_two(4) == 2
