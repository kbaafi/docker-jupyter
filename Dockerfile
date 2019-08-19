FROM python:3.7.3-stretch

WORKDIR /workdir

RUN mkdir /workdir/lab

COPY requirements.txt /workdir/requirements.txt

RUN pip3 install --upgrade pip && \
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8888

