#!/bin/bash

docker run -p 8888:8888 -v ./:/mount/ dev_env_jupyterlab

