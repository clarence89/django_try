from django.core.management.base import BaseCommand
from django.contrib.auth.models import User

class Command(BaseCommand):
    help = "Create a superuser with preset data"

    def handle(self, *args, **options):
        username = "admin"
        email = "clarence89.github.io"
        password = "adminpassword"
        if not User.objects.filter(username=username).exists():
            users = User.objects.create_superuser(username, email, password)
            users.first_name = "Clarence"
            users.last_name = "Baluyot"
            users.save()
            self.stdout.write(self.style.SUCCESS("Superuser created successfully."))
        else:
            self.stdout.write(self.style.WARNING("Superuser already exists."))
