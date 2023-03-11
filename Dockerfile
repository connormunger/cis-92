FROM docker.io/python:3.10

RUN pip install django 
COPY mysite /mysite 
WORKDIR /mysite
ENV PORT=8080
CMD python ./manage.py runserver 0.0.0.0:${PORT}
EXPOSE $PORT