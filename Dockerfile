FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
copy . /app
WORKDIR /app
RUN pip install -r requirements.txt
WORKDIR /app/snappass
ENTRYPOINT ["python"]
EXPOSE 5000
CMD ["main.py"]
