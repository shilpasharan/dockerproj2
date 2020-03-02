FROM python:3.7.3-stretch

# Working directory
WORKDIR /app

#Copy source code to working directory
COPY . app.py /app/

#install packages from requirements.txt
#hadolint ignore=DL3013
Run pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt