FROM python:3 
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY ./src /src
WORKDIR /src

CMD python3 fake-log-gen.py -n 0 -s 0.5
