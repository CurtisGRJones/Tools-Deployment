#! /bin/bash

if [ "${ENV}" = "production" ]; then
    echo "Running '$@' on production, confirm (Y/n)"
    read response
    if [ $response != "Y" ]; then
        exit 1
    fi
fi

case $1 in
build)
    ${SCRIPTS_DIR}/build.sh
    ;;
connect)
    ${SCRIPTS_DIR}/connect.sh
    ;;
deploy)
    ${SCRIPTS_DIR}/deploy.sh
    ;;
docker-build)
    ${SCRIPTS_DIR}/docker-build.sh
    ;;
docker-push)
    ${SCRIPTS_DIR}/docker-push.sh
    ;;
docker-start)
    ${SCRIPTS_DIR}/start-docker.sh
    ;;
dev)
    ${SCRIPTS_DIR}/dev.sh
    ;;
install-deps)
    ${SCRIPTS_DIR}/install-dependencies.sh
    ;;
*)
    echo "Unknown command $1"
    ;;
esac
