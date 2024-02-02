#! /bin/bash

source ${ENV_DIR}/.env.preview

SERVER=${SERVER_USER}@${SERVER_HOST}

ssh ${SERVER}