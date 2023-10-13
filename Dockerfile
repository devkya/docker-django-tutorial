# 베이스 이미지 설정
FROM python:3.11.2-slim-buster

ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y libpq-dev gcc python3-dev

# 작업 디렉토리 설정
WORKDIR /django

# 필요한 파일 복사
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt


