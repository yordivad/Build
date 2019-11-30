FROM  mcr.microsoft.com/dotnet/core/sdk:3.0

ENV PATH="${PATH}:~/.dotnet/tools"
RUN export PATH="$PATH:~/.dotnet/tools"
RUN apt update
RUN apt -y install git
RUN apt -y install default-jdk
RUN dotnet tool install -g Cake.Tool
RUN dotnet tool install -g GitVersion.Tool
RUN dotnet tool install -g dotnet-sonarscanner
RUN apt autoremove
RUN echo $"export PATH=$PATH:~/.dotnet/tools" >> ~/.bash_profile
ENV PATH="${PATH}:~/.dotnet/tools"

