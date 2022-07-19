FROM ubuntu:latest

WORKDIR /assetto

#install dotnet
RUN sudo apt-get update && sudo apt-get install curl -y
RUN curl -O -L -s https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb
RUN sudo apt-get update && sudo apt-get install -y apt-transport-https
RUN sudo apt-get install dotnet-sdk-5.0
RUN sudo apt install dotnet-sdk-3.1

#install server
RUN curl -O -L -s https://github.com/compujuckel/AssettoServer/releases/download/v0.0.49/assetto-server-linux-x64.tar.gz
RUN tar -zxvf assetto-server-linux-x64.tar.gz
RUN cd assetto-server-linux-x64
RUN sudo chmod +x AssettoServer

CMD ["./AssettoServer"]