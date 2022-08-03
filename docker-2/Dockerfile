FROM ubuntu:20.04
RUN apt update
ADD requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip-whl
RUN sleep 5
#RUN pip install --index-url https://pypi.python.org/simple / --upgrade pip
#RUN sleep 15
RUN /usr/local/bin/pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp

EXPOSE 5000
CMD ["python", "/opt/webapp/app.py"]