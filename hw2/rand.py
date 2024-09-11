"""
This module implements the function random_array(arr).
"""
import subprocess


def random_array(arr):
    """
    This function implements the function random_array(arr).
    It accepts an array as an input and returns an array.
    """
    shuffled_num = None
    for i, _ in enumerate(arr):
        shuffled_num = subprocess.run(
            ["shuf", "-i1-20", "-n1"], capture_output=True, check=False)
        arr[i] = int(shuffled_num.stdout)
    return arr
