FROM redmine

WORKDIR /usr/src/redmine

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        unzip \
    && rm -rf /var/lib/apt/lists/*

COPY plugins/ ./plugins
COPY themes/ ./public/themes

RUN unzip ./plugins/\*.zip -d ./plugins
RUN unzip ./public/themes/\*.zip -d ./public/themes
RUN chmod -R 755 ./plugins/*

RUN rm ./plugins/*.zip
RUN rm ./public/themes/*.zip

CMD ["rails", "server", "-b", "0.0.0.0"]