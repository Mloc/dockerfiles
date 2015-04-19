from mloc6/byond

ENV GITREF master

VOLUME ["/data"]
EXPOSE 8000

RUN apt-get update && apt-get install -y curl unzip

COPY start.sh /start

CMD ["/start"]
