# Specify the host & port of your service deployed to your dev environment
SERVICE_HOST_DEV	= localhost
SERVICE_PORT_DEV	= 8080

# We just pick an available port here
MITM_PORT			= 8000


spin_up_service:
	bobo -f service/api.py


start_recording:
	mitmdump --mode reverse:http://${SERVICE_HOST_DEV}:${SERVICE_PORT_DEV} \
		-p ${MITM_PORT} \
		-w mock_service/test_cases.mitm


replay:
	docker run -it --rm --name replayer \
		-p 8000:8000 \
		-v ${PWD}/mock_service:/mock_service \
		mitmproxy/mitmproxy:4.0.1 \
		mitmdump --mode reverse:http://localhost:8080 -p 8000 -v --showhost \
			--server-replay /mock_service/test_cases.mitm --server-replay-nopop


client_replay:
	mitmdump --client-replay traffic.mitm


create_test_cases:
	# you can use what you want to play some test scenarios such as Postman or curl
	sh ./test_cases.sh


inspect_test_cases:
	mitmproxy -r mock_service/test_cases.mitm -p 1119


integration_tests:
	docker-compose up -d --build
	docker-compose logs -f pytest


clean_integration_tests:
	docker-compose down


unit_tests:
	pytest client/tests/unit -vvv -s
