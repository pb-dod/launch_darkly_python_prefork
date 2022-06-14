In this repository, I try to reproduce a bug that causes Launch Darkly to not
relect the most recent state of feature flags when running with uwsgi + prefork.

The key to reproducing this issue is initializing the Launch Darkly client
before the process is forked by uWSGI. In this example, we do this by adding
a feature flag check to the Django settings.

The theory is that the pre-fork Launch Darkly client will spawn a thread for
monitoring updates to flags, but when it's forked that thread will [no longer
work](https://stackoverflow.com/a/12820303).

## Installation

1. [Install Docker](https://docs.docker.com/get-docker/)
1. Clone this repository and navigate to the directory.
1. `LD_SDK_KEY=<insert sdk key> ./test_build.sh`

## Usage

1. `./test_run.sh`

Visit: http://localhost:8000/
