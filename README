# Mocking with MITM

This project illustrates one way to mock your HTTP(S) service to write integrations tests against this mock.
It uses a Man-in-the-Middle reverse proxy to record the HTTP(S) responses and replays them.


## Getting Started

### Record tests cases

- In one terminal:
```
make start_recording
```

- In another terminal:
```
make create_test_cases
```

### [Optional] Inspect your tests cases

```
make inspect_test_cases
```

### Run the integration tests with your new mock !

```
make integration_tests
```

Once the tests are done, you can kill your mock container:
```
make clean_integration_tests
```


## Reusing this project

If you wish to start using this project with a real client that you need to test, you can
simply update the host & port of your service inside of the Makefile and the docker-compose.yaml.

The files/fodlers you need to copy:
- mock_service/
- Makefile
- docker-compose.yaml


