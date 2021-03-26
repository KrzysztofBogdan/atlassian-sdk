FROM maven:3.6.3

COPY atlassian-plugin-sdk-8.0.16.tar.gz /tmp/atlassian-plugin-sdk-8.0.16.tar.gz

RUN mkdir -p /usr/share/atlassian-plugin-sdk-8.0.16 \
  && tar -xzf /tmp/atlassian-plugin-sdk-8.0.16.tar.gz -C /usr/share/atlassian-plugin-sdk-8.0.16 --strip-components=1
  && rm /tmp/atlassian-plugin-sdk-8.0.16.tar.gz

ENV ATLAS_HOME /usr/share/atlassian-plugin-sdk-8.0.16
