FROM python

RUN \
    echo "===> update repository..."  && \
    apt-get update

RUN echo "===> install git..."  && \
    apt-get install git

ADD requirements.txt /opt/pip/

RUN pip install -r /opt/pip/requirements.txt

RUN mkdir /opt/yowsup

RUN git clone https://github.com/mister87/yowsup.git /opt/yowsup