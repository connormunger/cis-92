FROM docker.io/python:3.10

RUN pip install django
RUN pip install psycopg2-binary
COPY mysite /mysite 
WORKDIR /mysite
ENV PORT=8080
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_HOST=${DB_HOST}
CMD python ./manage.py runserver 0.0.0.0:${PORT}
EXPOSE $PORT