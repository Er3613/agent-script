#!/bin/bash

##Author: eric
##Date: 21 oct 2022

echo "starting docker installation in a few min.."

yum check-update
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker -y
systemctl start docker
systemctl enable docker
systemctl status docker


echo "docker ready please get the ip and type on the browser"