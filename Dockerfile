FROM eclipse/ubuntu_android:latest
MAINTAINER "fallen90 <fallen90@darknorth.cf>"
#update workspace
RUN sudo apt-get update && \
    sudo apt-get install -y git wget curl unzip ruby build-essential xvfb && \
    curl --retry 3 -SLO "http://nodejs.org/dist/v6.4.0/node-v6.4.0-linux-x64.tar.gz" && \
    sudo tar -xzf "node-v6.4.0-linux-x64.tar.gz" -C /usr/local --strip-components=1 && \
    rm "node-v6.4.0-linux-x64.tar.gz" && \ 
    sudo npm install -g yarn bower gulp ionic cordova && \
    android update sdk --all --no-ui --filter platform-tools,tools,build-tools-24.0.2,android-25,android-24,android-23,android-22,android-19,android-21,extra-android-support,extra-android-m2repository,extra-google-m2repository

EXPOSE 4403 6080 22 3000 4000 8000 