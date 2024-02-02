#! /bin/bash

npx concurrently \
     -n app,redis \
     "cd ${APP_DIR} && yarn dev" \
     "cd ${SCRIPTS_DIR}/docker/${ENV} && docker compose up redis"