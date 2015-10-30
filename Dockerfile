FROM python:2.7
RUN pip install docopt gmusicapi
RUN pip install netaddr 
WORKDIR /opt
RUN git clone https://github.com/thebigmunch/gmusicapi-scripts.git
VOLUME /music
COPY mac.py /opt/mac.py
CMD cd /opt/gmusicapi-scripts/ && python gmsync.py -U `python /opt/mac.py` /music
