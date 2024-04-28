from hello import more_hello, more_goodbye


# test 1
def test_more_hello():
    assert "hi" == more_hello()


# test 2


def test_more_goodbye():
    assert "bye" == more_goodbye()
