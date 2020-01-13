FROM ruby:2.7.0-buster

LABEL Name="example-ruby-vue.api"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=github-user-name
ENV GITHUB_TOKEN=github-token
ENV GITHUB_EMAIL=github-email

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo

EXPOSE 8080 8081
CMD ["bash", "/init.sh"]
