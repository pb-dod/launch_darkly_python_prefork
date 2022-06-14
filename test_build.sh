#!/bin/sh
docker build \
    -t test_launch_darkly_python_prefork \
    --build-arg LD_SDK_KEY=$LD_SDK_KEY \
    .
