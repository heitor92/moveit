FROM node:14.15.5

EXPOSE 80:80

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt update && \
    apt install --no-install-recommends yarn

USER node

RUN echo 'export PATH="$PATH:`yarn global bin`"' >> ~/.bashrc

