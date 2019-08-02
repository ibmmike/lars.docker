#!/bin/bash

workingDir="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
echo workingDir=$workingDir

mkdir -p ./tmp && unzip -n -d ./tmp/larsClient larsClient.zip
mkdir -p ./tmp/featureRepo18.0.0.4 && unzip -n -d ./tmp/featureRepo18.0.0.4 wlp-featureRepo-18.0.0.4.zip
mkdir -p ./tmp/featureRepo19.0.0.4 && unzip -n -d ./tmp/featureRepo19.0.0.4 wlp-featureRepo-19.0.0.4.zip

docker build --rm . -f $workingDir/DockerfileLARS1800419004 -t liberty-features-repo:18004n19004
docker login
docker tag liberty-features-repo:18004n19004 ibmmike/liberty-features-repo:18004n19004
docker push ibmmike/liberty-features-repo:18004n19004
docker logout

rm -rf ./tmp/
