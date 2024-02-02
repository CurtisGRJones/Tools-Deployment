#! /bin/bash

export SCRIPTS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export PROJECT_DIR=$(dirname $SCRIPTS_DIR)
export APP_DIR=${PROJECT_DIR}/${APP_DIR}
export NGINX_DIR=${PROJECT_DIR}/nginx
export ENV_DIR=${SCRIPTS_DIR}/env 

source ${ENV_DIR}/.env
source ${ENV_DIR}/.env.secrets

alias ${APP_COMMAND_ALIAS}="${SCRIPTS_DIR}/commands.sh"

if [[ -z "$1" ]]
then
    source ${SCRIPTS_DIR}/use-environment.sh development
else
    source ${SCRIPTS_DIR}/use-environment.sh $1
fi;

nvm use 18;

echo "Activation complete, "${APP_COMMAND_ALIAS}" commands enabled"
