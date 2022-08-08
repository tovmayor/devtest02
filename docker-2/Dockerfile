FROM ubuntu:20.04
RUN apt update
ADD requirements.txt /tmp/
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp/
WORKDIR /opt/webapp

EXPOSE 5000

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python3-all \
&& apt-get install -y -q python3-pip
RUN sleep 5
RUN pip3 install -qr /tmp/requirements.txt
ADD app.py /opt/webapp/
EXPOSE 5000
CMD ["python3", "/opt/webapp/app.py"]

