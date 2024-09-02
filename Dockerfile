FROM python:3.8
#FROM python:3.8-slim-bullseye

WORKDIR /code

#COPY . /code/
COPY  src/fishmlserv/main.py /code/
COPY requirements.txt /code/

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
#RUN pip install git+https://github.com/DONGUK777/fishmlserv.git

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
