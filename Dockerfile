FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget apt-transport-https && rm -rf /var/lib/apt/lists/*

ADD  https://github.com/PowerShell/PowerShell/releases/download/v6.2.3/powershell_6.2.3-1.ubuntu.18.04_amd64.deb /tmp/powershell.deb

RUN apt-get update && apt-get upgrade -y && apt-get install -y /tmp/powershell.deb locales less ca-certificates gss-ntlmssp && rm -rf /var/lib/apt/lists/*

USER ${user}
