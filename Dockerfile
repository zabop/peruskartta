FROM kartoza/mapproxy

WORKDIR /mapproxy

COPY . /mapproxy

EXPOSE 8080

CMD ["mapproxy-util", "serve-develop", "mapproxy.yaml",  "-b", "0.0.0.0:8080"]


