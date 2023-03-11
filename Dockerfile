FROM docker.io/python:3.10

RUN pip install django 
COPY mysite /mysite 
WORKDIR /mysite 
CMD python ./manage.py runserver 0.0.0.0:8000
EXPOSE 8080/tcp
EXPOSE 8080/udp