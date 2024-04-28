#!/bin/bash

#membuat docker image dari dockerfile
docker build -t item-app:v1 .
#melihat daftar image dilocal
docker images
#ubah nama image(repository) dan disesuaikan dengan nama repository di docker hub
docker tag item-app:v1 ilhamatsaris/item-app:v1
#login ke Docker hub
#cat ./my_password.txt | docker login --username ilhamatsaris --password-stdin
echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin
#upload image ke docker hub
docker push ilhamatsaris/item-app:v1