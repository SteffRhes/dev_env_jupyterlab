# dev_env_jupyterlab

A dockerized jupyterlab instance with LSP plugins installed and personalized configurations
integrated. Mainly used for quick experiments or as a base for downstream docker images.

Target docker image on hub is https://hub.docker.com/r/steffrhes/dev_env_jupyterlab .

To run the docker image, do:
```
docker run -p 8888:8888 -v ./:/mount/ steffrhes/dev_env_jupyterlab:latest
```

To build yourself and run the local image, do:
```
./dev_env_jupyterlab_build.sh
./dev_env_jupyterlab_run.sh
```

