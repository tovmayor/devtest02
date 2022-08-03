FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/
RUN ls -l /tmp 
RUN sleep 10
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp/
RUN ls -l/opt/webapp/
RUN sleep 10
WORKDIR /opt/webapp

EXPOSE 5000
CMD ["python", "app.py"]
