sudo apt install -y nginx pipenv

cd /home/ubuntu/django_try/

pipenv install
pipenv install gunicorn django
pipenv run python manage.py makemigrations
pipenv run python manage.py migrate
pipenv run python manage.py create_superuser
