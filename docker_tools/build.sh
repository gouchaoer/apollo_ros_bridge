#!/bin/bash

if [ -z "$@" ]
#TODO:: add hosted docker image url
IMGNAME="auroai/apollo_ros_bridge:latest"
then
      echo "using default image name = $IMGNAME"
else
      IMGNAME=$@
      echo "using image name $IMGNAME"
fi

#docker build -t  $IMGNAME .
docker build -t  --env https_proxy="http://192.168.2.83:8118"  $IMGNAME . 
