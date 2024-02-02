#! /bin/bash

# TODO make option to build only 1
docker build -t curtisgrjones/${APP_NAME}-${ENV}-app:latest ${APP_DIR}
docker build -t curtisgrjones/${APP_NAME}-${ENV}-nginx:latest ${NGINX_DIR}