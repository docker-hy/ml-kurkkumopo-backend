FROM python:3.6.7-slim

WORKDIR /src

COPY . /src

RUN pip install --upgrade pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "-u", "app.py"]
