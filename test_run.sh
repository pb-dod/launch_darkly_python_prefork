#!/bin/sh
docker run -it \
    -p "8000:8000" \
    -v $(pwd):/code \
    -e LD_SDK_KEY=$LD_SDK_KEY \
    --rm \
    test_launch_darkly_python_prefork
