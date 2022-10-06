FROM python:3.7.7-alpine

RUN  apk add --no-cache gcc musl-dev libffi-dev libev-dev inotify-tools

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN  pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

CMD [ "python src/bcv.py" ]

#  vim: set ts=8 sw=4 tw=0 ft=dockerfile :
