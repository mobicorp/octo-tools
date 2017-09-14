FROM microsoft/dotnet:1.0-runtime
MAINTAINER mcano@mobicorp.com

WORKDIR /octo
ENV OCTO_VERSION=4.22.1

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/${OCTO_VERSION}/OctopusTools.${OCTO_VERSION}.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

CMD [ "dotnet" , "/octo/Octo.dll"]