#!/bin/bash

workingDir="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
echo workingDir=$workingDir

mkdir -p ./tmp && unzip -n -d ./tmp/larsClient larsClient.zip
mkdir -p ./tmp/featureRepo19.0.0.4 && unzip -n -d ./tmp/featureRepo19.0.0.4 wlp-featureRepo-19.0.0.4.zip

docker build --rm . -f $workingDir/DockerfileLARS19004 -t liberty-features-repo:19004
docker login
docker tag liberty-features-repo:19004 ibmmike/liberty-features-repo:19004
docker push ibmmike/liberty-features-repo:19004
docker logout

rm -rf ./tmp/
