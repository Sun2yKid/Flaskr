# Flaskr
[Flask Official Tutorial](https://flask.palletsprojects.com/en/1.1.x/tutorial/)
## Reference
https://flask.palletsprojects.com/en/1.1.x/tutorial/
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