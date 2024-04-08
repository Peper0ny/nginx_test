#!/bin/bash

docker_username=medoedoed
image=nginx_test

docker build -t $image .

docker tag nginx:latest $docker_username/$image:latest

docker push $docker_username/$image:latest

kubectl create namespace nginx-test

helm install nginx-test ./nginx --namespace nginx-test