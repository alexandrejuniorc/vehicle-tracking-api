FROM node:22.8.0-slim

RUN apt update && \
  apt install openssl procps -y && \
  npm install -g @nestjs/cli@10.4.8

# Criar e mudar permissões para o diretório /home/node/app
RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

USER node

WORKDIR /home/node/app

CMD [ "tail", "-f", "/dev/null" ]