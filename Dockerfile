FROM microsoft/dotnet:1.0-runtime
MAINTAINER mcano@mobicorp.com

WORKDIR /octo
ARG VERSION=4.22.1
ENV OCTO_VERSION=${VERSION}

RUN apt-get -qqq update && apt-get -qqq install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common  \
    && curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" \
    && apt-get -qqq update && apt-get -qqq install -y docker-ce

RUN curl -s -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/${OCTO_VERSION}/OctopusTools.${OCTO_VERSION}.portable.tar.gz \ 
    && tar -xzf OctopusTools.tar.gz && rm -f OctopusTools.tar.gz

CMD [ "dotnet" , "/octo/Octo.dll"]