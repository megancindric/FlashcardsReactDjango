FROM python:3.7.15-alpine3.17
WORKDIR /user/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000