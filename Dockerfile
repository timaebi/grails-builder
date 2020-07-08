FROM openjdk:8

ARG GRAILS_VERSION="2.4.4"

ADD https://github.com/grails/grails-core/releases/download/v${GRAILS_VERSION}/grails-${GRAILS_VERSION}.zip /grails.zip
RUN unzip /grails.zip && mv /grails-* /grails && rm /grails.zip

ENV GRAILS_HOME="/grails"
ENV PATH="${PATH}:${GRAILS_HOME}/bin"

WORKDIR /app
