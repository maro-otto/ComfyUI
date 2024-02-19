ARG VARIANT="3.10"
FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}

ENV LANG en_US.UTF-8

ENV POETRY_HOME="/opt/poetry"
ENV PATH="$POETRY_HOME/bin:$PATH"
RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PYTHONPATH .
ENV MLFLOW_TRACKING_URI https://mlflow.tools.dali.bi.otto.de


RUN apt update && apt upgrade -y && \
    apt install openssh-client -y && \
    apt install software-properties-common -y && \
    rm -rf /var/cache/apt/archives /var/lib/apt/lists/* && \
    /opt/poetry/bin/poetry self add keyrings.google-artifactregistry-auth

# Workaroung for broken gcsfuse as mentioned here
# https://github.com/GoogleCloudPlatform/gcsfuse/issues/1424#issuecomment-1749161971
ENV GCSFUSE_VERSION=1.2.0

RUN apt-get update -y && \
    curl -LJO "https://github.com/GoogleCloudPlatform/gcsfuse/releases/download/v${GCSFUSE_VERSION}/gcsfuse_${GCSFUSE_VERSION}_amd64.deb" && \
    apt-get -y install fuse && \
    apt-get clean && \
    dpkg -i "gcsfuse_${GCSFUSE_VERSION}_amd64.deb"
