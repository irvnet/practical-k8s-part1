#!/bin/bash

echo 'creating kind cluster... '
kind create cluster --name dev-cluster --image kindest/node:v1.19.16 --config=../config/kind-cluster-config.yaml


