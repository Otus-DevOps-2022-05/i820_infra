import unittest

class NumbersTest(unittest.TestCase):

    def test_equal(self):
        self.assertEqual(1 + 4, 5)

if __name__ == '__main__':
    unittest.main()
