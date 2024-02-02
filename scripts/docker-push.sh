#! /bin/bash

docker push curtisgrjones/${APP_NAME}-${ENV}-app:latest
docker push curtisgrjones/${APP_NAME}-${ENV}-nginx:latest