# lars.docker
Docker image build artifacts for customized LARS installation

## File List:
- *DockerfileLARSBase* - Dockerfile for building base image which installs and configures WLP, MongoDB and LARS.  All other images should build from this one.
- *DockerfileLARS19004* - Sample Dockerfile for building WLP+LARS image with features for WLP 19.0.0.4
- *DockerfileLARS1800419004* - Sample Dockerfile for building WLP+LARS image with features for WLP 18.0.0.4 and 19.0.0.4
- *scripts/build-base.sh* - Sample build script for DockerfileLARSBase image build
- *scripts/build-19004.sh* - Sample build script for DockerfileLARS19004 image build
- *scripts/build-18004n19004.sh* - Sample build script for DockerfileLARS1800419004 image build
- *larsClient.zip* - LARS Client archive
- *larsServerPackage.jar* - LARS server archive
- *etc/repositories.properties* - WLP repository configuration for DockerfileLARSBase image
- *server.xml* - Customized WLP server configuration for DockerfileLARSBase image
- *README.md* - This README.md

## What To Do:
1. Download the desired version of [Directory-based Repository of Liberty Features and Addons Zip Archive](https://www-945.ibm.com/support/fixcentral/swg/selectFixes?parent=ibm~WebSphere&product=ibm/WebSphere/WebSphere+Liberty&release=All&platform=All&function=fixId&fixids=wlp-featureRepo-*&includeSupersedes=0 "WLP Repo Zip Archives") and place them in the Docker build directory.
2. Use sample *Dockerfile#####* and *scripts/build-#####.sh* scripts as template and create your own Dockerfile and build script for the version of features repo you want to build into your LARS image.
3. Customize the *server.xml* as neccessary.
4. Build and run your image/container.

*(Optional)* Liberty Asset Repository Service JAR is included in this Git repository, it can also be downloaded from [LARS](https://developer.ibm.com/wasdev/downloads/#asset/tools-Liberty_Asset_Repository_Service).
*(Optional)* Liberty Asset Repository Service Client JAR is included in this Git repository, it can also be downloaded from [LARS Client](https://developer.ibm.com/wasdev/downloads/#asset/tools-Liberty_Asset_Repository_Service_Client).
