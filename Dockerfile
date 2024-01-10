FROM ubuntu:22.04

WORKDIR /assetto

#install dotnet
RUN apt-get update && apt-get install curl -y
RUN apt-get update && apt-get install aspnetcore-runtime-6.0 -y

#install server
RUN curl -O -L -s https://github.com/compujuckel/AssettoServer/releases/download/v0.0.54/assetto-server-linux-x64.tar.gz
RUN tar -zxvf assetto-server-linux-x64.tar.gz
RUN chmod +x AssettoServer

ENTRYPOINT ["./AssettoServer"]
