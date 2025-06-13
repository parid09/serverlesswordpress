# 1. Base image with Docker engine inside (for SAM local)
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# 2. Install PHP, Composer, AWS CLI, SAM CLI, Node & Serverless
RUN apt-get update \
  && apt-get install -y php-cli zip unzip curl git docker.io python3-pip \
  && curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer \
  && pip3 install --no-cache-dir aws-sam-cli \
  && npm install -g serverless \
  && apt-get clean -y

# 3. Give 'vscode' user rights to use Docker
RUN usermod -aG docker vscode
