"""Main.py tests"""

from sample import main


def test_main():
    result = main.sum_int(1, 2)

    assert result == 3
