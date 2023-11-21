FROM continuumio/miniconda3
RUN apt-get update && apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y build-essential
#RUN pip install flask

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install -r requirement.txt

EXPOSE 5000
CMD ["python", "app.py"]