#! /bin/bash

##  Esure ~/.ssh/config is configures with
##  Host SERVER_HOST
##  IdentityFile /path/to/private/key

SERVER=${SERVER_USER}@${SERVER_HOST}

scp -r ${SCRIPTS_DIR}/docker/${ENV} ${SERVER}:~/;
scp ${ENV_DIR}/.env ${SERVER}:~/${ENV}
scp -r ${ENV_DIR}/.env.${ENV} ${SERVER}:~/${ENV}
ssh ${SERVER} 'cd ~/'${ENV}' && docker compose pull && docker compose down && docker compose up -d'