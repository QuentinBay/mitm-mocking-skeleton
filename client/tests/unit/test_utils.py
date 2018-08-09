from client.client.utils import get_time, NOW


def test_get_time():
    assert get_time() == NOW
