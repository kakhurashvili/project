from hospitalmanagement.settings.base import *


# Database
# https://docs.djangoproject.com/en/3.0/ref/settings/#databases

DEBUG = False
ADMINS = (
 ('Shaks', 'shaks.cisco@gmail.com'),
)
ALLOWED_HOSTS = ['*']
DATABASES = {
 'default': {
 'ENGINE': 'django.db.backends.postgresql',
 'NAME': 'educa',
 'USER': 'educa',
 'PASSWORD': 'winarexi1',
 }
}