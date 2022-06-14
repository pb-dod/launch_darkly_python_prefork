#!/bin/sh
docker run -it -p "8000:8000" -v $(pwd):/code --rm test_launch_darkly_python_prefork
