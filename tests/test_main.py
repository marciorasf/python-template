from src.main import sum_int


def test_main() -> None:
    result = sum_int(1, 2)

    assert result == 3
