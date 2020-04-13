FROM ubuntu:latest

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn
#RUN apt install -y yarn
RUN yarn --version

RUN apt install git -y

# change login shell
RUN apt install zsh -y
RUN chsh -s $(which zsh)

# japanese setting
RUN apt install -y  language-pack-ja-base language-pack-ja ibus-mozc
RUN echo 'export LANG=ja_JP.UTF-8' >> ~/.zshrc
RUN echo 'export LANGUAGE="ja_JP:ja"' >> ~/.zshrc

ENTRYPOINT [ "/bin/bash"]
RUN zsh

WORKDIR /react-ts-project

RUN node -v

#RUN npx create-react-app react-ts-app --typescript

#WORKDIR react-ts-app
#RUN yarn start

