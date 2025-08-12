#!/bin/bash

read -r tag_latest tag_date <<< "$(./dev_env_jupyterlab_create_tag.sh)"

docker build . -t "$tag_latest"
docker build . -t "$tag_date"

