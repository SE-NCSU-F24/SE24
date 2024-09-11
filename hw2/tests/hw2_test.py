from hw2 import hw2_debugging

def test_case_one():
    assert hw2_debugging.mergeSort([9,8,7,6,5,4,3,2,1]) == [1,2,3,4,5,6,7,8,9]

def test_case_two():
    assert hw2_debugging.mergeSort([1,3,5,7,9,2,4,6,8]) == [1,2,3,4,5,6,7,8,9]

def test_case_three():
    assert hw2_debugging.mergeSort([11,33,22,44,88,99,55,66,77]) == [11,22,33,44,55,66,77,88,99]