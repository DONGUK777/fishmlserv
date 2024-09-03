#FROM datamario24/python311scikitlearn-fastapi:1.0.0
#
#WORKDIR /code
#
#COPY  src/fishmlserv/main.py /code/
#
#RUN pip install --no-cache-dir --upgrade  git+https://github.com/DONGUK777/fishmlserv.git@0.8/hub
#
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

FROM datamario24/python311scikitlearn-fastapi:1.0.0

WORKDIR /code

# Copy the main.py file and pyproject.toml file into the container
COPY src/fishmlserv/main.py /code/
COPY pyproject.toml /code/

# Install Python packages including the CLI tool
RUN pip install --no-cache-dir --upgrade git+https://github.com/DONGUK777/fishmlserv.git@0.8/hub

# Default command to run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

