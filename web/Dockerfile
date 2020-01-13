FROM node:12.14.0-buster

LABEL Name="example-ruby-vue.web"
LABEL Version="1.0.0"

ENV NODE_ENV=development
ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo

EXPOSE 3000 3001
CMD ["bash", "/init.sh"]
