#!/bin/bash

## Updatading dependecies ##
sudo apt update
if [ $? -ne 0 ]
then
    sudo yum udpate
fi

## Installing Minikube or kops ##
read CHOICE "Do you want to setup minikube [0] or kops [1]?"
if [ $CHOICE -eq 0 ]
then
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm -rf minikube-linux-amd64

    BINARY=minikube
elif [ $CHOICE -eq 1 ]
then
    curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
    chmod +x kops
    sudo mv kops /usr/local/bin/kops

    BINARY=kops
else
    echo "Invalid option, try again this script"
    exit 1
fi

## Installing Kubernetes ##
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

## Health Check ##
$BINARY --help &> /dev/null
if [ $? -eq 0 ]
then
    echo "$BINARY is running"

    kubectl --help &> /dev/null
    if [ $? -eq 0 ]
    then
        echo "Kubectl is running"
    else
        echo "ERROR (CODE: $?): kubectl is not running"
        exit 1
    fi
else
    echo "ERROR (CODE: $?): $BINARY is not running"
    exit 1
fi