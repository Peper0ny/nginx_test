#!/bin/bash

helm uninstall nginx-test --namespace nginx-test

kubectl delete namespace nginx-test