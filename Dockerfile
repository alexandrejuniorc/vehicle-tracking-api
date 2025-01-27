FROM node:22.8.0-slim

# install dependencies
RUN apt-get update -qq && \
  apt-get install -qq --no-install-recommends zsh openssl procps -y && \
  npm install -g pnpm @nestjs/cli@10.4.8 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Criar e mudar permissões para o diretório /home/node/app
RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

USER node

WORKDIR /home/node/app

CMD [ "tail", "-f", "/dev/null" ]