FROM python:3.9.19

RUN python --version
RUN apt update
RUN pip install flask

WORKDIR /app

COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
