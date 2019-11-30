FROM scratch
ADD  rootfs.tar.gz /

RUN apt update \
&&  apt install -y software-properties-common \
&&  apt install -y wget \
&&  wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
&&  dpkg -i packages-microsoft-prod.deb \
&&  add-apt-repository universe \
&&  apt update \
&&  apt install -y apt-utils \
&&  apt install -y apt-transport-https \
&&  apt install -y git \
&&  apt install -y default-jdk

RUN apt install -y dotnet-sdk-2.2 \
&&  apt autoremove

RUN dotnet tool install -g Cake.Tool \
&&  dotnet tool install -g GitVersion.Tool \
&&  dotnet tool install -g dotnet-sonarscanner

RUN echo $"export PATH=$PATH:~/.dotnet/tools" >> ~/.bash_profile
ENV PATH="${PATH}:~/.dotnet/tools"