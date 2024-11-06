"""test
"""
import unittest

from ..sum import sum_int


class MyTestCase(unittest.TestCase):
    """Test class
    """
    def test_sum_int(self):
        """test the sum_int function
        """
        response = sum_int([1, 2, 3, 4, 5])
        self.assertEqual(15, response)  # add assertion here


if __name__ == '__main__':
    unittest.main()
