# Docker image to run integration tests

FROM python:3.7

LABEL maintainer=quentin

COPY client /client

RUN pip install -r /client/client/requirements.txt

RUN pip install -r  /client/tests/requirements.txt
