FROM python:3.7-alpine

ENTRYPOINT ["python3"]

WORKDIR /

RUN apk update
RUN apk add tar curl

ADD https://ci.easyrpg.org/job/player-js/lastSuccessfulBuild/artifact/player-js.tar.gz /player-js.tar.gz

RUN tar -xf player-js.tar.gz
WORKDIR /player-js
RUN mkdir /games
RUN rm -rf games
RUN ln -s /games /player-js/games

LABEL org.opencontainers.image.authors="jlhguni@gmail.com"

HEALTHCHECK --interval=5m CMD curl http://localhost:8000 || exit 1

EXPOSE 8000

CMD ["-m", "http.server"]
