setup:
	python3 - m venv ~/.dockerproj2
	
install:
			pip install --upgrade pip &&\
				pip install -r requirements.txt


validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute
   
lint:
		hadolint Dockerfile 
	pylint --disable=R,C,W1202 app.py

all: 
	install lint test
