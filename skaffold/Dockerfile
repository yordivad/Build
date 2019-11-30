FROM scratch
ADD  rootfs.tar.gz /

RUN apt update \
&&  apt install -y apt-transport-https ca-certificates curl software-properties-common \
&&  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
&&  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
&&  apt update \
&&  apt -y install docker-ce \
&&  curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl \
&&  chmod +x ./kubectl \
&&  mv ./kubectl /usr/local/bin/kubectl \
&&  curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh \
&&  chmod 700 get_helm.sh \
&&  ./get_helm.sh \
&&  curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 \
&&  chmod +x skaffold \
&&  mv skaffold /usr/local/bin \
&&  apt autoremove

