from python:3

RUN apt update && apt upgrade -y
RUN apt install -y git

RUN pip3 install pipenv


WORKDIR /app/code/
COPY src/ /app/code/

RUN pip3 install -r requirements.txt
RUN pipenv install

copy entrypoint.sh /entrypoint.sh
entrypoint /entrypoint.sh
