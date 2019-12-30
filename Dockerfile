FROM jenkins/jenkins:lts

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update && add-apt-repository -y universe && apt-get upgrade -y && apt-get install -y powershell && rm -rf /var/lib/apt/lists/*
