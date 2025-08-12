#!/bin/bash

docker login

read -r tag_latest tag_date <<< "$(./dev_env_jupyterlab_create_tag.sh)"

echo "$tag_latest"
echo "$tag_date"

docker tag "$tag_latest" steffrhes/"$tag_latest"
docker tag "$tag_date" steffrhes/"$tag_date"

docker push steffrhes/"$tag_latest"
docker push steffrhes/"$tag_date"

