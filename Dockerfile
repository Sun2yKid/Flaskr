FROM python:3.6

WORKDIR /app

COPY . /app

RUN pip install flask gunicorn gevent

EXPOSE 8000

CMD ["gunicorn", "-k", "gevent", "-w", "4", "-b", "0:8000", "flaskr:create_app()", "--access-logfile", "-"]
