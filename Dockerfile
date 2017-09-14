FROM microsoft/dotnet:2.0-runtime
MAINTAINER mcano@mobicorp.com

WORKDIR /octo

ENV OCTO_VERSION=4.14.1

RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/${OCTO_VERSION}/OctopusTools.${OCTO_VERSION}.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

CMD [ "dotnet", "Octo.dll" ]
