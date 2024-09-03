FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /code

COPY src /code/src
COPY pyproject.toml /code/

RUN pip install --no-cache-dir --upgrade  git+https://github.com/DONGUK777/fishmlserv.git@0.8/hub

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]


