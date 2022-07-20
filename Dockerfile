FROM ubuntu:22.04

WORKDIR /assetto

#install dotnet
RUN apt-get update && apt-get install curl -y
RUN curl -O -L -s https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install aspnetcore-runtime-6.0 -y
#RUN apt-get install dotnet-sdk-3.1

#install server
RUN curl -O -L -s https://github.com/compujuckel/AssettoServer/releases/download/v0.0.49/assetto-server-linux-x64.tar.gz
RUN tar -zxvf assetto-server-linux-x64.tar.gz
RUN chmod +x AssettoServer

# ADD script/ /usr/local/bin
# RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["./AssettoServer"]