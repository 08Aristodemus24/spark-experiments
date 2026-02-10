

if [ $1 == "up" ]; then
    # run in detached mode
    docker compose up -d

elif [ $1 == "down" ]; then
    # stop container
    docker compose down

elif [ $1 == "restart" ]; then
    docker compose down --volumes
    docker compose up -d

elif [ $1 == "shell" ]; then
    docker exec -it spark-experiments-spark-1 bash

fi