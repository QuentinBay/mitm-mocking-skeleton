import pytest

import client.client.api as my_lib


hello_params = (
    ('chipy', b'Hello chipy!\n'),
    ('chipy2', b'Hello chipy2!\n'),
)


@pytest.mark.parametrize('param, response', hello_params)
def test_hello(param, response):
    assert my_lib.hello(param) == response


bye_params = (
    ('chipy', b'Bye chipy!\n'),
)


@pytest.mark.parametrize('param, response', bye_params)
def test_bye(param, response):
    assert my_lib.bye(param) == response
