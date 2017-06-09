FROM centos:7

RUN yum install -y python-devel python-virtualenv gcc

ADD myapp.py /app/
WORKDIR /app
COPY requirements.txt app.ini entrypoint.sh /app/

RUN virtualenv .venv
ARG pip=".venv/bin/pip"
RUN ${pip} install --upgrade pip
RUN ${pip} install -r requirements.txt

EXPOSE 80

ENTRYPOINT /app/entrypoint.sh
