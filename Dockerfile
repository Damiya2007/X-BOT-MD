FROM node:lts-buster
RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  npm i pm2 -g && \
  rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/ruemods/X-BOT-MD /root/Sparky
WORKDIR /root/Sparky/
RUN yarn install
CMD ["npm", "start"]
