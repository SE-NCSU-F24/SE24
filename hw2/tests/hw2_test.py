"""
This module adds some tests to verify whether our merge_sort implementation is working as expected.
"""
from hw2 import hw2_debugging

def test_case_one():
    """
    Checking worst case scenario of an input sorted in descending order.
    """
    assert hw2_debugging.merge_sort([9,8,7,6,5,4,3,2,1]) == [1,2,3,4,5,6,7,8,9]

def test_case_two():
    """
    Checking best case scenario of an input sorted in ascending order.
    """
    assert hw2_debugging.merge_sort([1,3,5,7,9,2,4,6,8]) == [1,2,3,4,5,6,7,8,9]

def test_case_three():
    """
    Checking input with random ordering of elements
    """
    assert hw2_debugging.merge_sort([11,33,22,44,88,99,55,66,77]) == [11,22,33,44,55,66,77,88,99]
