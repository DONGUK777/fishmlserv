FROM python:3.8
#FROM python:3.8-slim-bullseye

# 파일 실행을 코드 밑에서 실행함
WORKDIR /code

COPY . /code/

#COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "src.fishmlserv.main:app", "--host", "0.0.0.0", "--port", "8080"]

