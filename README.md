# Flaskr
[Flask Official Tutorial](https://flask.palletsprojects.com/en/1.1.x/tutorial/)
## Reference
https://flask.palletsprojects.com/en/1.1.x/tutorial/

[Guide to Python](https://pythonguidecn.readthedocs.io/zh/latest/index.html)

## ENV
flask 1.1.1
python 3.6.4

For Linux and Mac:
```
$ export FLASK_APP=flaskr
$ export FLASK_ENV=development
$ flask run
```
For Windows cmd, use set instead of export:
```
> set FLASK_APP=flaskr
> set FLASK_ENV=development
> flask run
```

For Windows PowerShell, use $env: instead of export:
```
> $env:FLASK_APP = "flaskr"
> $env:FLASK_ENV = "development"
> flask run
```

## init db
> flask init-db

## run
> flask run

## testing
> pytest -v
> coverage run -m pytest
> coverage html

## Build
> pip install wheel
> python setup.py bdist_wheel

[packaging projects]https://packaging.python.org/tutorials/packaging-projects/

## set new env
> python3 -m venv flaskr_env

## Install
> pip install flaskr-1.0.0-py3-none-any.whl
> export FLASK_APP=flaskr
> flask init-db

## Build
[Deployment Options](https://flask.palletsprojects.com/en/1.1.x/deploying/)

### waitress
> pip install waitress
> waitress-serve --call 'flaskr:create_app'

### gunicorn
> pip install gunicorn
> gunicorn -k gevent -w 4 -b 127.0.0.1:4000 "flaskr:create_app()" [--access-logfile -]
`--access-logfile -` 输出日志到当前目录(-)
[gunicorn docs](https://docs.gunicorn.org/en/stable)

### uwsgi
> pip install uwsgi
> uwsgi --http 127.0.0.1:5000 --module "flaskr:create_app()"

## load testiing tool --- [locust](https://locust.io/)
> locust

If the Locust file is located under a subdirectory and/or named different than locustfile.py, specify it using -f:
> locust -f test.py

[locust docs](https://docs.locust.io/en/latest/quickstart.html)
