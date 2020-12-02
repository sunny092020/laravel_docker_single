#!/bin/bash

cp -R ../django_samples/mysite .
cp web/Dockerfile.prod mysite
cp web/entrypoint.prod.sh mysite

cp mysite/init_db.sh db
cp mysite/orders.csv db
cp mysite/products.csv db

docker-compose -f common/docker-compose.prod.yml up --build 

rm -rf mysite
rm -rf db/init_db.sh
rm -rf db/orders.csv
rm -rf db/products.csv
