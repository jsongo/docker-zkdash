Build the images:
    sudo docker-compose build
When image is build, run db init script first like this:
    sudo docker exec zkdash python ./bin/syncdb.py
Then run the container:
    sudo docker-compose up -d
