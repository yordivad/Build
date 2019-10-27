FROM  mcr.microsoft.com/dotnet/core/sdk:2.2

ENV PATH="/root/.dotnet/tools:${PATH}"

RUN apt update
RUN apt -y install default-jdk
RUN dotnet tool install -g Cake.Tool
RUN dotnet tool install -g nbgv
RUN dotnet tool install -g dotnet-sonarscanner
RUN apt autoremove