FROM python:3
ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y unixodbc-dev
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
