FROM python:3.8

ADD requirements.txt /

RUN pip install -r /requirements.txt

WORKDIR /app

COPY . /app

EXPOSE 8888

CMD [ "jupyter", "notebook", "--allow-root", "--no-browser", "--port=8888", "--ip=0.0.0.0"]
