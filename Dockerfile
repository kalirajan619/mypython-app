FROM python:alpine3.10
LABEL Client="logistic-python app"
MAINTAINER Muthu
COPY . /myapp
WORKDIR /myapp
RUN pip install --upgrade pip
#mysqlclient dependency
RUN apk add --no-cache mariadb-connector-c-dev ;\
    apk add --no-cache --virtual .build-deps \
        build-base \
        mariadb-dev ;\
    pip install mysqlclient;\
    apk del .build-deps 
RUN apk add --no-cache bash
RUN pip install -r requirement.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
