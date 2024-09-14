# peruskartta

## Remote

## Local

Create locally run XYZ tileserver using [mapproxy](https://mapproxy.github.io/mapproxy/latest/install.html):

    mapproxy-util serve-develop mapproxy.yaml

Then XYZ tiles are accessible via:

    http://127.0.0.1:8080/tiles/peruskartta/webmercator/{z}/{x}/{y}.png
