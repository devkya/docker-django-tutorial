# 베이스 이미지 설정
FROM python:3.11.2-slim-buster

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# 소스코드 복사
COPY . .

# 컨테이너 실행 시 실행할 명령어
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
