FROM node:22.8.0-slim

# ---------------------------
# DEPENDENCIES INSTALLATION SECTION
# ---------------------------
RUN apt-get update -qq && \
  apt-get install -qq --no-install-recommends openssl procps -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
RUN  npm install -g pnpm @nestjs/cli@10.4.8

# ---------------------------
# DIRECTORY CONFIG SECTION
# ---------------------------
RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
USER node

# ---------------------------
# WORKDIR AND CMD SECTION
# ---------------------------
WORKDIR /home/node/app
CMD [ "tail", "-f", "/dev/null" ]