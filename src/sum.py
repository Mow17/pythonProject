"""sum function
"""


def sum_int(num_list: list[int]) -> int:
    """
    :param num_list: list of integer
    :return: sum of input list
    """
    res = 0
    for num in num_list:
        res += num
    return res
