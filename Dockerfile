FROM python:3.9.19

RUN python --version
RUN apt update 
#&& apt install -y python3
# RUN apt install python3-pip -y
RUN pip install flask

WORKDIR /app

COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]
