if [ $1 = "production" ]
then 
    echo "Setting to production environemnt, confirm (Y/n)"
    read response
    if [ $response != "Y" ] 
    then
        exit 1;
    fi; 
fi;

source ${ENV_DIR}/.env.$1
export ENV=$1

echo "Environment set to ${ENV}"