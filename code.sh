#!/bin/bash

docker cp ~/git/django_samples/mysite/oms/static/oms/. common_nginx_1:/home/app/web/staticfiles/oms/
docker cp ~/git/django_samples/mysite/oms common_web_1:/home/app/web/

docker exec -it common_web_1 sh -c 'cd /home/app/web/oms && django-admin.py makemessages -a && django-admin.py compilemessages'
