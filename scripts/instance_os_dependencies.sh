sudo apt install -y nginx pipenv

cd /home/ubuntu/django_try/

pipenv install
pipenv install gunicorn django
pipenv shell
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --no-input
python manage.py create_superuser --no-input
