FROM python:3.9-alpine3.16

ENV PYTHONUNBUFFERED 1

COPY requirements/requirements.txt requirements/requirements.txt
COPY quizapp /quizapp
WORKDIR /quizapp
EXPOSE 8000

#RUN apk add postgresql-client build-base build-base postgresql-dev

RUN pip install -r /requirements/requirements.txt

RUN adduser --disabled-password quizapp-user

USER quizapp-user