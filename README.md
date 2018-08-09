# Mocking with MITM

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)&nbsp;&nbsp;  &nbsp;&nbsp; 
[![forthebadge](https://forthebadge.com/images/badges/compatibility-betamax.svg)](https://forthebadge.com)



This project illustrates one way to mock your HTTP(S) service and write integration tests against it.
It uses a Man-in-the-Middle reverse proxy to record the HTTP(S) responses and replays them.


The Use Case for this skeleton: You want to write a python client (client/) to simplify the use of 
an already existing HTTP Api (service/).

The already existing service takes time to deploy and must be mocked to run the integration 
tests of your python client.


## Getting Started

### Record tests cases

- In one terminal:
```
make spin_up_service
```

- In another terminal:
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


