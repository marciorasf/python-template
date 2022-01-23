from sample import main


def test_main() -> None:
    result = main.sum_int(1, 2)

    assert result == 3
