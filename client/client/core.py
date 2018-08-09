"""
Hello World business logic
"""

import requests


HELLO = 'http://real_service_host:8000/api/v1/hello'
# HELLO = 'http://172.28.0.3:8000/api/v1/hello'
BYE = 'http://real_service_host:8000/api/v1/bye'
# BYE = 'http://172.28.0.3:8000/api/v1/bye'


def do_hello(person):
    response = requests.get(url=HELLO+'?person='+person)
    response.raise_for_status()
    return response.content


def do_bye(person):
    data = {'person': person}
    response = requests.post(url=BYE, data=data)
    response.raise_for_status()
    return response.content
