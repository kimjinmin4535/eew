FROM python:3.9-slim

RUN apt update
RUN apt upgrade -y

#현재 디렉터리에서( . ) /app 복사 : 파일 모두 복사
COPY . /app
RUN pip3 install flask

WORKDIR /app
EXPOSE 5000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]