FROM  mcr.microsoft.com/dotnet/core/sdk:2.2

ENV PATH="${PATH}:~/.dotnet/tools"
RUN export PATH="$PATH:~/.dotnet/tools"
RUN apt update
RUN apt -y install default-jdk
RUN dotnet tool install -g Cake.Tool
RUN dotnet tool install -g nbgv
RUN dotnet tool install -g dotnet-sonarscanner
RUN apt autoremove
RUN echo $"export PATH=$PATH:~/.dotnet/tools" >> ~/.bash_profile
ENV PATH="${PATH}:~/.dotnet/tools"

