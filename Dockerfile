FROM maven:3.8.2-openjdk-17-slim

RUN apk add --no-cache bash

COPY atlassian-plugin-sdk-8.0.16.tar.gz /tmp/atlassian-plugin-sdk-8.0.16.tar.gz

RUN mkdir -p /usr/share/atlassian-plugin-sdk-8.0.16 \
  && tar -xzf /tmp/atlassian-plugin-sdk-8.0.16.tar.gz -C /usr/share/atlassian-plugin-sdk-8.0.16 --strip-components=1 \
  && rm /tmp/atlassian-plugin-sdk-8.0.16.tar.gz

ENV ATLAS_HOME /usr/share/atlassian-plugin-sdk-8.0.16
