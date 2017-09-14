# octo-tools

Octopus Deploy CLI inside Docker


https://octopus.com/docs/api-and-integration/octo.exe-command-line


# Usage

docker run -it mobidocker/octo-tools:4.22.1 bash -c "dotnet /octo/Octo.dll --help"


# Motivation

used in Gitlab ci jobs.

```yaml
deploy:octo:
    image: mobidocker/octo-tools:4.22.1
    script:
      -  dotnet /octo/Octo.dll --help
```