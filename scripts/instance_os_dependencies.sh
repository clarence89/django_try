
sudo apt install -y nginx pipenv

cd /home/ubuntu/django_try/

pipenv install
pipenv shell
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
python manage.py create_superuser
python manage.py runserver 0.0.0.0:8000
