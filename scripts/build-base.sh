#!/bin/bash +x

workingDir="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

echo workingDir=$workingDir

rm -rf $workingDir/tmp
mkdir -p $workingDir/tmp
cp $workingDir/wlp-featureRepo-19.0.0.6.zip $workingDir/tmp/featureRepo.zip

docker build --rm . -f DockerfileLARSBase -t liberty-features-repo:base
docker login
docker tag liberty-features-repo:base ibmmike/liberty-features-repo:base
docker push ibmmike/liberty-features-repo:base
docker logout

rm -rf $workingDir/tmp
