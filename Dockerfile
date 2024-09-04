# FROM datamario24/python311scikitlearn-fastapi:1.0.0
FROM donguk777/isdomi:0.8.9

WORKDIR /code

COPY src/fishmlserv/main.py /code/

# 역할: 모델 서빙(의존성은 BASE 이미지에서 모두 설치했다.)
RUN pip install --no-cache-dir --upgrade  git+https://github.com/DONGUK777/fishmlserv.git@1.0.0/k

# 역할: 모델 서빙을 위해 API 구동하는 FastAPI RUN
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]


