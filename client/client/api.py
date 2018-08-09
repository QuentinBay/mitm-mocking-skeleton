"""
Hello World interface for the client library
"""
from client.client.core import (
    do_hello,
    do_bye
)


def hello(person):
    return do_hello(person)


def bye(person):
    return do_bye(person)
